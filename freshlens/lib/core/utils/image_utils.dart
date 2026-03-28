import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;

Float32List preprocessImageForTFLite(String path) {
  final bytes = File(path).readAsBytesSync();
  var image = img.decodeImage(bytes);
  if (image == null) throw Exception('Failed to decode image');
  
  image = img.bakeOrientation(image);
  
  final size = image.width < image.height ? image.width : image.height;
  final x = (image.width - size) ~/ 2;
  final y = (image.height - size) ~/ 2;
  
  final cropped = img.copyCrop(image, x: x, y: y, width: size, height: size);
  final resized = img.copyResize(cropped, width: 224, height: 224, interpolation: img.Interpolation.linear);
  
  return imageToFloat32List(resized);
}

img.Image? loadImageFromPath(String path) {
  final bytes = File(path).readAsBytesSync();
  final image = img.decodeImage(bytes);
  if (image == null) return null;
  return img.bakeOrientation(image);
}

img.Image resizeImage(img.Image image, int width, int height) {
  final size = image.width < image.height ? image.width : image.height;
  final x = (image.width - size) ~/ 2;
  final y = (image.height - size) ~/ 2;
  
  final cropped = img.copyCrop(image, x: x, y: y, width: size, height: size);
  return img.copyResize(cropped, width: width, height: height, interpolation: img.Interpolation.linear);
}

Float32List imageToFloat32List(img.Image image) {
  final input = Float32List(image.width * image.height * 3);
  var index = 0;

  for (final p in image) {
    input[index++] = (p.r - 127.5) / 127.5;
    input[index++] = (p.g - 127.5) / 127.5;
    input[index++] = (p.b - 127.5) / 127.5;
  }
  return input;
}
