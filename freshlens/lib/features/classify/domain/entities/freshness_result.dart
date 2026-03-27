class FreshnessResult {
  final FreshnessVerdict verdict;
  final double freshScore;
  final double okayScore;
  final double avoidScore;
  final String foodCategory;
  final String imagePath;
  final DateTime classifiedAt;

  const FreshnessResult({
    required this.verdict,
    required this.freshScore,
    required this.okayScore,
    required this.avoidScore,
    required this.foodCategory,
    required this.imagePath,
    required this.classifiedAt,
  });

  double get confidence => switch (verdict) {
    FreshnessVerdict.fresh => freshScore,
    FreshnessVerdict.okay  => okayScore,
    FreshnessVerdict.avoid => avoidScore,
  };
}

enum FreshnessVerdict { fresh, okay, avoid }
