import '../../domain/entities/freshness_result.dart';

class FreshnessResultModel extends FreshnessResult {
  const FreshnessResultModel({
    required super.verdict,
    required super.freshScore,
    required super.okayScore,
    required super.avoidScore,
    required super.foodCategory,
    required super.imagePath,
    required super.classifiedAt,
  });

  FreshnessResult toEntity(String path) {
    return FreshnessResult(
      verdict: verdict,
      freshScore: freshScore,
      okayScore: okayScore,
      avoidScore: avoidScore,
      foodCategory: foodCategory,
      imagePath: path,
      classifiedAt: classifiedAt,
    );
  }
}
