import 'package:flutter_test/flutter_test.dart';
import 'package:image/image.dart' as img;
import 'package:freshlens/core/utils/image_utils.dart';

void main() {
  group('imageToFloat32List', () {
    test('output length is width × height × 3', () {
      final image = img.Image(width: 224, height: 224);
      final result = imageToFloat32List(image);
      expect(result.length, equals(224 * 224 * 3));
    });

    test('all pixel values are normalised to [-1.0, 1.0]', () {
      // Create a 4×4 image filled with various pixel intensities
      final image = img.Image(width: 4, height: 4);
      // Paint known pixel values: pure black (0,0,0), pure white (255,255,255)
      // and mid-grey (127,127,127)
      image.setPixelRgb(0, 0, 0, 0, 0);       // black
      image.setPixelRgb(1, 0, 255, 255, 255); // white
      image.setPixelRgb(2, 0, 127, 127, 127); // near-mid

      final floats = imageToFloat32List(image);

      for (final v in floats) {
        expect(v, greaterThanOrEqualTo(-1.0),
            reason: 'Value $v is below -1.0');
        expect(v, lessThanOrEqualTo(1.0),
            reason: 'Value $v is above 1.0');
      }
    });

    test('pure-black pixel normalises near -1.0', () {
      final image = img.Image(width: 1, height: 1);
      image.setPixelRgb(0, 0, 0, 0, 0);
      final floats = imageToFloat32List(image);
      // (0 - 127.5) / 127.5 ≈ -1.0
      expect(floats[0], closeTo(-1.0, 0.01));
      expect(floats[1], closeTo(-1.0, 0.01));
      expect(floats[2], closeTo(-1.0, 0.01));
    });

    test('pure-white pixel normalises near +1.0', () {
      final image = img.Image(width: 1, height: 1);
      image.setPixelRgb(0, 0, 255, 255, 255);
      final floats = imageToFloat32List(image);
      // (255 - 127.5) / 127.5 ≈ +1.0
      expect(floats[0], closeTo(1.0, 0.01));
      expect(floats[1], closeTo(1.0, 0.01));
      expect(floats[2], closeTo(1.0, 0.01));
    });

    test('mid-grey pixel normalises near 0.0', () {
      final image = img.Image(width: 1, height: 1);
      // 127 → (127 - 127.5) / 127.5 ≈ -0.004
      image.setPixelRgb(0, 0, 127, 127, 127);
      final floats = imageToFloat32List(image);
      expect(floats[0], closeTo(0.0, 0.01));
      expect(floats[1], closeTo(0.0, 0.01));
      expect(floats[2], closeTo(0.0, 0.01));
    });
  });

  group('resizeImage', () {
    test('produces a square crop when input is landscape', () {
      // 300×200 landscape → crop to 200×200, resize to 224×224
      final source = img.Image(width: 300, height: 200);
      final resized = resizeImage(source, 224, 224);
      expect(resized.width, equals(224));
      expect(resized.height, equals(224));
    });

    test('produces a square crop when input is portrait', () {
      // 200×400 portrait → crop to 200×200, resize to 224×224
      final source = img.Image(width: 200, height: 400);
      final resized = resizeImage(source, 224, 224);
      expect(resized.width, equals(224));
      expect(resized.height, equals(224));
    });

    test('produces a square crop when input is already square', () {
      final source = img.Image(width: 300, height: 300);
      final resized = resizeImage(source, 224, 224);
      expect(resized.width, equals(224));
      expect(resized.height, equals(224));
    });
  });
}
