import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/freshness_result.dart';

class VerdictCard extends StatelessWidget {
  final FreshnessVerdict verdict;
  final double confidence;

  const VerdictCard({super.key, required this.verdict, required this.confidence});

  @override
  Widget build(BuildContext context) {
    Color bgColor;
    String text;

    switch (verdict) {
      case FreshnessVerdict.fresh:
        bgColor = AppColors.fresh;
        text = 'FRESH';
        break;
      case FreshnessVerdict.okay:
        bgColor = AppColors.okay;
        text = 'OKAY';
        break;
      case FreshnessVerdict.avoid:
        bgColor = AppColors.avoid;
        text = 'AVOID';
        break;
    }

    return Card(
      color: bgColor,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Confidence: ${(confidence * 100).toStringAsFixed(1)}%',
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
