import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
import '../../../../core/utils/image_utils.dart';
import '../../domain/entities/freshness_result.dart';
import '../models/freshness_result_model.dart';

@lazySingleton
class TFLiteClassifier {
  Interpreter? _interpreter;
  List<String> _labels = [];

  Future<void> initialize() async {
    try {
      _interpreter = await Interpreter.fromAsset('assets/models/freshlens.tflite');
      final labelsData = await rootBundle.loadString('assets/models/labels.txt');
      _labels = labelsData.split('\n').map((e) => e.trim()).where((e) => e.isNotEmpty).toList();
    } catch (e) {
      // Ignore missing model for now
    }
  }

  FreshnessResultModel classify(String imagePath) {
    if (_interpreter == null) {
      throw Exception('Interpreter not initialized');
    }

    final image = loadImageFromPath(imagePath);
    if (image == null) throw Exception('Failed to load image');

    final resized = resizeImage(image, 224, 224);
    final inputBytes = imageToFloat32List(resized);

    final input = inputBytes.reshape([1, 224, 224, 3]);
    final output = List.filled(1 * _labels.length, 0.0).reshape([1, _labels.length]);

    _interpreter!.run(input, output);

    final results = output[0] as List<double>;
    
    var maxScore = 0.0;
    var maxIndex = 0;
    for (var i = 0; i < results.length; i++) {
      if (results[i] > maxScore) {
        maxScore = results[i];
        maxIndex = i;
      }
    }

    final topLabel = _labels.isNotEmpty && maxIndex < _labels.length ? _labels[maxIndex] : "Unknown";
    final verdict = _mapLabelToVerdict(topLabel);

    double fresh = results.isNotEmpty ? results[0] : 0.0;
    double okay = results.length > 1 ? results[1] : 0.0;
    double avoid = results.length > 2 ? results[2] : 0.0;

    return FreshnessResultModel(
      verdict: verdict,
      freshScore: fresh,
      okayScore: okay,
      avoidScore: avoid,
      foodCategory: topLabel,
      imagePath: imagePath,
      classifiedAt: DateTime.now(),
    );
  }

  FreshnessVerdict _mapLabelToVerdict(String label) {
    final lower = label.toLowerCase();
    if (lower.contains('avoid') || lower.contains('rotten')) return FreshnessVerdict.avoid;
    if (lower.contains('okay') || lower.contains('stale')) return FreshnessVerdict.okay;
    return FreshnessVerdict.fresh;
  }
}
