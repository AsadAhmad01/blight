import 'package:flutter_test/flutter_test.dart';
import 'package:freshlens/features/classify/domain/entities/freshness_result.dart';

FreshnessResult _makeResult({
  required FreshnessVerdict verdict,
  double fresh = 0.8,
  double okay = 0.1,
  double avoid = 0.05,
}) =>
    FreshnessResult(
      verdict: verdict,
      freshScore: fresh,
      okayScore: okay,
      avoidScore: avoid,
      foodCategory: 'Apple',
      imagePath: '/fake/path.jpg',
      classifiedAt: DateTime(2026, 3, 28),
    );

void main() {
  group('FreshnessResult.confidence', () {
    test('returns freshScore when verdict is fresh', () {
      final result = _makeResult(verdict: FreshnessVerdict.fresh, fresh: 0.92);
      expect(result.confidence, equals(0.92));
    });

    test('returns okayScore when verdict is okay', () {
      final result = _makeResult(verdict: FreshnessVerdict.okay, okay: 0.65);
      expect(result.confidence, equals(0.65));
    });

    test('returns avoidScore when verdict is avoid', () {
      final result = _makeResult(verdict: FreshnessVerdict.avoid, avoid: 0.73);
      expect(result.confidence, equals(0.73));
    });
  });

  group('FreshnessVerdict enum', () {
    test('all three verdicts exist', () {
      expect(FreshnessVerdict.values.length, equals(3));
      expect(FreshnessVerdict.values,
          containsAll([FreshnessVerdict.fresh, FreshnessVerdict.okay, FreshnessVerdict.avoid]));
    });
  });
}
