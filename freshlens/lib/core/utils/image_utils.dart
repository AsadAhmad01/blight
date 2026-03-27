import 'dart:io';
import 'dart:typed_data';
import 'package:image/image.dart' as img;

img.Image? loadImageFromPath(String path) {
  final bytes = File(path).readAsBytesSync();
  return img.decodeImage(bytes);
}

img.Image resizeImage(img.Image image, int width, int height) {
  return img.copyResize(image, width: width, height: height);
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
