import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import 'package:blight/core/network/network_info.dart';
import 'package:blight/features/classify/data/datasources/cloud_classify_service.dart';
import 'package:blight/features/classify/data/datasources/tflite_classifier.dart';
import 'package:blight/features/classify/data/models/freshness_result_model.dart';
import 'package:blight/features/classify/data/models/hugging_face_response.dart';
import 'package:blight/features/classify/data/repositories/classify_repository_impl.dart';
import 'package:blight/features/classify/domain/entities/freshness_result.dart';

// ──────────────────────────────────────────────
// Mocks
// ──────────────────────────────────────────────
class MockTFLiteClassifier extends Mock implements TFLiteClassifier {}
class MockCloudClassifyService extends Mock implements CloudClassifyService {}
class MockNetworkInfo extends Mock implements NetworkInfo {}
class MockFlutterSecureStorage extends Mock implements FlutterSecureStorage {}

/// Mocktail requires a fallback value for dart:io File because it cannot
/// construct one automatically in null-safe mode.
class _FileFake extends Fake implements File {}

// ──────────────────────────────────────────────
// Helpers
// ──────────────────────────────────────────────
const _testPath = '/fake/apple.jpg';

FreshnessResultModel _localResult({
  double fresh = 0.90,
  double okay = 0.07,
  double avoid = 0.03,
  FreshnessVerdict verdict = FreshnessVerdict.fresh,
}) =>
    FreshnessResultModel(
      verdict: verdict,
      freshScore: fresh,
      okayScore: okay,
      avoidScore: avoid,
      foodCategory: 'Fresh Apple',
      imagePath: _testPath,
      classifiedAt: DateTime(2026, 3, 28),
    );

HuggingFaceResponse _hf(String label, double score) =>
    HuggingFaceResponse(label: label, score: score);

void main() {
  late MockTFLiteClassifier mockTFLite;
  late MockCloudClassifyService mockCloud;
  late MockNetworkInfo mockNetwork;
  late MockFlutterSecureStorage mockStorage;
  late ClassifyRepositoryImpl repo;

  setUpAll(() {
    // dart:io File can't be stubbed automatically — register a Fake for any() matchers.
    registerFallbackValue(_FileFake());
  });

  setUp(() {
    mockTFLite = MockTFLiteClassifier();
    mockCloud = MockCloudClassifyService();
    mockNetwork = MockNetworkInfo();
    mockStorage = MockFlutterSecureStorage();

    repo = ClassifyRepositoryImpl(
      mockTFLite,
      mockCloud,
      mockNetwork,
      mockStorage,
    );

    // Default: local model is available, cloud preference = off, connected
    when(() => mockStorage.read(key: 'use_cloud_ai'))
        .thenAnswer((_) async => 'false');
    when(() => mockNetwork.isConnected).thenAnswer((_) async => true);
    when(() => mockTFLite.isAvailable).thenReturn(true);
    when(() => mockTFLite.classify(any()))
        .thenAnswer((_) async => _localResult());
    when(() => mockCloud.classify(any())).thenAnswer((_) async => []);
  });

  // ──────────────────────────────────────────────
  // Routing Logic
  // ──────────────────────────────────────────────
  group('Routing: prefers TFLite when available and preference is local', () {
    test('returns local result when confidence ≥ 60%', () async {
      final result = await repo.classifyImage(_testPath);

      expect(result.isRight(), isTrue);
      result.fold((_) {}, (r) {
        expect(r.freshScore, equals(0.90));
        expect(r.verdict, equals(FreshnessVerdict.fresh));
      });
      verifyNever(() => mockCloud.classify(any()));
    });

    test('escalates to cloud when TFLite confidence < 60% and connected', () async {
      // Simulate a low-confidence local result (avoid verdict, avoidScore = 0.4)
      when(() => mockTFLite.classify(any())).thenAnswer((_) async => _localResult(
            fresh: 0.35,
            okay: 0.25,
            avoid: 0.40,
            verdict: FreshnessVerdict.avoid,
          ));

      when(() => mockCloud.classify(any())).thenAnswer((_) async =>
          [_hf('Fresh Apple', 0.78), _hf('Okay Apple', 0.15)]);

      final result = await repo.classifyImage(_testPath);

      verify(() => mockCloud.classify(any())).called(1);
      expect(result.isRight(), isTrue);
      result.fold((_) {}, (r) {
        expect(r.verdict, equals(FreshnessVerdict.fresh));
        expect(r.freshScore, equals(0.78));
      });
    });

    test('stays local when TFLite confidence < 60% but NOT connected', () async {
      when(() => mockTFLite.classify(any())).thenAnswer((_) async => _localResult(
            fresh: 0.30,
            okay: 0.30,
            avoid: 0.40,
            verdict: FreshnessVerdict.avoid,
          ));
      when(() => mockNetwork.isConnected).thenAnswer((_) async => false);

      final result = await repo.classifyImage(_testPath);

      verifyNever(() => mockCloud.classify(any()));
      expect(result.isRight(), isTrue);
    });
  });

  group('Routing: cloud override via storage flag', () {
    test('routes directly to cloud when use_cloud_ai = true', () async {
      when(() => mockStorage.read(key: 'use_cloud_ai'))
          .thenAnswer((_) async => 'true');
      when(() => mockCloud.classify(any())).thenAnswer((_) async =>
          [_hf('Avoid Apple', 0.85)]);

      final result = await repo.classifyImage(_testPath);

      verifyNever(() => mockTFLite.classify(any()));
      verify(() => mockCloud.classify(any())).called(1);
      expect(result.isRight(), isTrue);
      result.fold((_) {}, (r) {
        expect(r.verdict, equals(FreshnessVerdict.avoid));
      });
    });
  });

  group('Routing: TFLite unavailable falls back to cloud', () {
    test('uses cloud when TFLite isAvailable = false', () async {
      when(() => mockTFLite.isAvailable).thenReturn(false);
      when(() => mockCloud.classify(any())).thenAnswer((_) async =>
          [_hf('Fresh Apple', 0.92)]);

      final result = await repo.classifyImage(_testPath);

      verifyNever(() => mockTFLite.classify(any()));
      verify(() => mockCloud.classify(any())).called(1);
      expect(result.isRight(), isTrue);
    });
  });

  group('Cloud fallback safety', () {
    test('returns local fallback when cloud returns empty list', () async {
      // Force low confidence to trigger cloud path
      when(() => mockTFLite.classify(any())).thenAnswer((_) async => _localResult(
            fresh: 0.30,
            okay: 0.40,
            avoid: 0.30,
            verdict: FreshnessVerdict.okay,
          ));
      when(() => mockCloud.classify(any())).thenAnswer((_) async => []);

      final result = await repo.classifyImage(_testPath);

      expect(result.isRight(), isTrue);
      result.fold((_) {}, (r) {
        // Falls back to the local result entity
        expect(r.verdict, equals(FreshnessVerdict.okay));
      });
    });

    test('returns local fallback when cloud throws an exception', () async {
      when(() => mockTFLite.classify(any())).thenAnswer((_) async => _localResult(
            fresh: 0.20,
            okay: 0.20,
            avoid: 0.60,
            verdict: FreshnessVerdict.avoid,
          ));
      when(() => mockCloud.classify(any()))
          .thenThrow(Exception('Network timeout'));

      final result = await repo.classifyImage(_testPath);

      // Still returns Right — cloud failure is silently handled
      expect(result.isRight(), isTrue);
    });
  });

  // ──────────────────────────────────────────────
  // Verdict Label Mapping (via cloud path)
  // ──────────────────────────────────────────────
  group('Verdict label mapping', () {
    void _setupCloudOverride(List<HuggingFaceResponse> responses) {
      when(() => mockStorage.read(key: 'use_cloud_ai'))
          .thenAnswer((_) async => 'true');
      when(() => mockCloud.classify(any()))
          .thenAnswer((_) async => responses);
    }

    test('"rotten apple" label maps to avoid', () async {
      _setupCloudOverride([_hf('rotten apple', 0.90)]);
      final result = await repo.classifyImage(_testPath);
      result.fold((_) {}, (r) => expect(r.verdict, equals(FreshnessVerdict.avoid)));
    });

    test('"avoid" label maps to avoid', () async {
      _setupCloudOverride([_hf('Avoid Apple', 0.88)]);
      final result = await repo.classifyImage(_testPath);
      result.fold((_) {}, (r) => expect(r.verdict, equals(FreshnessVerdict.avoid)));
    });

    test('"stale bread" label maps to okay', () async {
      _setupCloudOverride([_hf('stale bread', 0.75)]);
      final result = await repo.classifyImage(_testPath);
      result.fold((_) {}, (r) => expect(r.verdict, equals(FreshnessVerdict.okay)));
    });

    test('"okay" label maps to okay', () async {
      _setupCloudOverride([_hf('Okay Apple', 0.72)]);
      final result = await repo.classifyImage(_testPath);
      result.fold((_) {}, (r) => expect(r.verdict, equals(FreshnessVerdict.okay)));
    });

    test('"Fresh Apple" label maps to fresh', () async {
      _setupCloudOverride([_hf('Fresh Apple', 0.95)]);
      final result = await repo.classifyImage(_testPath);
      result.fold((_) {}, (r) => expect(r.verdict, equals(FreshnessVerdict.fresh)));
    });
  });
}
