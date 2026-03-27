import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../domain/entities/freshness_result.dart';

class ConfidenceBars extends StatelessWidget {
  final FreshnessResult result;

  const ConfidenceBars({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildBar('Fresh', result.freshScore, AppColors.fresh),
        const SizedBox(height: 8),
        _buildBar('Okay', result.okayScore, AppColors.okay),
        const SizedBox(height: 8),
        _buildBar('Avoid', result.avoidScore, AppColors.avoid),
      ],
    );
  }

  Widget _buildBar(String label, double value, Color color) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          child: Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        ),
        Expanded(
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0.0, end: value),
            duration: const Duration(milliseconds: 800),
            builder: (context, val, _) {
              return Stack(
                alignment: Alignment.centerLeft,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: val,
                      color: color,
                      backgroundColor: color.withValues(alpha: 0.2),
                      minHeight: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      '${(val * 100).toStringAsFixed(1)}%',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
