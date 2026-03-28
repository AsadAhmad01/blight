import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/freshness_result.dart';
import '../../domain/repositories/classify_repository.dart';
import '../datasources/tflite_classifier.dart';
import '../datasources/cloud_classify_service.dart';

@LazySingleton(as: ClassifyRepository)
class ClassifyRepositoryImpl implements ClassifyRepository {
  final TFLiteClassifier _tflite;
  final CloudClassifyService _cloudService;
  final NetworkInfo _networkInfo;
  final FlutterSecureStorage _storage;

  ClassifyRepositoryImpl(
    this._tflite,
    this._cloudService,
    this._networkInfo,
    this._storage,
  );

  @override
  Future<Either<Failure, FreshnessResult>> classifyImage(String imagePath) async {
    try {
      final useCloudStr = await _storage.read(key: 'use_cloud_ai');
      final overrideCloud = useCloudStr == 'true';

      if (overrideCloud || !_tflite.isAvailable) {
        return await _classifyViaCloud(imagePath, _getDummyResult(imagePath));
      }

      final localResult = await _tflite.classify(imagePath);

      if (localResult.confidence < 0.60 && await _networkInfo.isConnected) {
        return await _classifyViaCloud(imagePath, localResult.toEntity(imagePath));
      }

      return Right(localResult.toEntity(imagePath));
    } on MLException catch (e) {
      return Left(MLInferenceFailure(e.message));
    } catch (e) {
      return Left(UnknownFailure(e.toString()));
    }
  }

  FreshnessResult _getDummyResult(String imagePath) {
    return FreshnessResult(
      verdict: FreshnessVerdict.fresh,
      freshScore: 0.0,
      okayScore: 0.0,
      avoidScore: 0.0,
      foodCategory: 'Unknown',
      imagePath: imagePath,
      classifiedAt: DateTime.now(),
    );
  }

  Future<Either<Failure, FreshnessResult>> _classifyViaCloud(String imagePath, FreshnessResult fallback) async {
    try {
      final results = await _cloudService.classify(File(imagePath));
      if (results.isNotEmpty) {
        final sorted = List.of(results)..sort((a, b) => b.score.compareTo(a.score));
        final topLabel = sorted.first.label;
        final verdict = _mapLabelToVerdict(topLabel);
        
        double fresh = fallback.freshScore;
        double okay = fallback.okayScore;
        double avoid = fallback.avoidScore;

        for (final r in results) {
          final l = r.label.toLowerCase();
          if (l.contains('avoid') || l.contains('rotten')) {
            avoid = r.score;
          } else if (l.contains('okay') || l.contains('stale')) {
            okay = r.score;
          } else {
            fresh = r.score;
          }
        }

        return Right(FreshnessResult(
          verdict: verdict,
          freshScore: fresh,
          okayScore: okay,
          avoidScore: avoid,
          foodCategory: topLabel,
          imagePath: imagePath,
          classifiedAt: DateTime.now(),
        ));
      }
      return Right(fallback);
    } catch (e) {
      return Right(fallback);
    }
  }

  FreshnessVerdict _mapLabelToVerdict(String label) {
    final lower = label.toLowerCase();
    if (lower.contains('avoid') || lower.contains('rotten')) return FreshnessVerdict.avoid;
    if (lower.contains('okay') || lower.contains('stale')) return FreshnessVerdict.okay;
    return FreshnessVerdict.fresh;
  }
}
