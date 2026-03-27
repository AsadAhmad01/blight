import 'dart:io';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../domain/entities/freshness_result.dart';
import '../widgets/confidence_bars.dart';
import '../widgets/verdict_card.dart';

class ResultPage extends StatelessWidget {
  final dynamic result;

  const ResultPage({super.key, this.result});

  @override
  Widget build(BuildContext context) {
    if (result is! FreshnessResult) {
      return Scaffold(
        appBar: AppBar(title: const Text('Result')),
        body: const Center(child: Text('Invalid result data.')),
      );
    }

    final fresResult = result as FreshnessResult;

    return Scaffold(
      appBar: AppBar(title: const Text('Analysis Result')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: 'food-image',
              child: Image.file(
                File(fresResult.imagePath),
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    child: VerdictCard(
                      key: ValueKey(fresResult.verdict),
                      verdict: fresResult.verdict,
                      confidence: fresResult.confidence,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ConfidenceBars(result: fresResult),
                  const SizedBox(height: 24),
                  Center(
                    child: Chip(
                      label: Text('Detected: ${fresResult.foodCategory}'),
                      avatar: const Icon(Icons.fastfood),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      _getAdviceText(fresResult.verdict),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Saved to history! (Coming soon)')),
                          );
                        },
                        icon: const Icon(Icons.save),
                        label: const Text('Save to History'),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {
                          final text = 'My food is ${fresResult.verdict.name}! Scanned with FreshLens.';
                          Share.share(text);
                        },
                        icon: const Icon(Icons.share),
                        label: const Text('Share'),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String _getAdviceText(FreshnessVerdict verdict) {
    switch (verdict) {
      case FreshnessVerdict.fresh:
        return 'Looks great! Enjoy your fresh food.';
      case FreshnessVerdict.okay:
        return 'It\'s still edible, but try to consume it soon.';
      case FreshnessVerdict.avoid:
        return 'Warning: This food may be spoiled. Better safe than sorry!';
    }
  }
}
