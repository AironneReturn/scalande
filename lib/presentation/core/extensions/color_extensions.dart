import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

extension HexColor on Color {
  /// String is in the format 'aabbcc' or 'ffaabbcc' with an optional leading '#' or '0x'.
  static Color fromHex(String hexString) {
    final buffer = StringBuffer(hexString);

    if (hexString.length == 10) {
      buffer.clear();
      buffer.write(hexString.replaceFirst('0x', ''));
    } else if (hexString.length == 9) {
      buffer.clear();
      buffer.write(hexString.replaceFirst('#', ''));
    } else if (hexString.length == 7) {
      buffer.clear();
      buffer.write(hexString.replaceFirst('#', 'ff'));
    }

    return Color(int.tryParse(buffer.toString(), radix: 16)?? 0xffffff);
  }

  Color brightness(double intensity) {
    HSLColor hslColor = HSLColor.fromColor(this);
    // if (hslColor.saturation == 0) {
    //   return hslColor.withLightness(intensity).withHue(0).toColor();
    // }

    return hslColor.withLightness(intensity).toColor();
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) =>
      '${leadingHashSign ? '0x' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0').toUpperCase()}'
      '${red.toRadixString(16).padLeft(2, '0').toUpperCase()}'
      '${green.toRadixString(16).padLeft(2, '0').toUpperCase()}'
      '${blue.toRadixString(16).padLeft(2, '0').toUpperCase()}';

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  int toHexInt({bool leadingHashSign = false}) => int.parse(
      '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}',
      radix: 16);

  Color get complementary {
    HSLColor hslColor = HSLColor.fromColor(this);
    double value;
    if (HSLColor.fromColor(this).hue < 180) {
      value = 180;
    } else {
      value = -180;
    }

    HSLColor Color = hslColor.withHue(HSLColor.fromColor(this).hue + value);

    return Color.toColor();
  }

  MaterialColor get toMaterialColor {
    Map<int, Color> tempMap = {
      50: Color.fromRGBO(red, green, blue, 0.1),
      100: Color.fromRGBO(red, green, blue, 0.2),
      200: Color.fromRGBO(red, green, blue, 0.3),
      300: Color.fromRGBO(red, green, blue, 0.4),
      400: Color.fromRGBO(red, green, blue, 0.5),
      500: Color.fromRGBO(red, green, blue, 1),
      600: Color.fromRGBO(red, green, blue, 0.7),
      700: Color.fromRGBO(red, green, blue, 0.8),
      800: Color.fromRGBO(red, green, blue, 0.9),
      900: Color.fromRGBO(red, green, blue, 1.0),
    };
    return MaterialColor(toHexInt(), tempMap);
  }

  Map<int, Color> get toSwatch {
    return {
      50: Color.fromRGBO(red, green, blue, 0.1),
      100: Color.fromRGBO(red, green, blue, 0.2),
      200: Color.fromRGBO(red, green, blue, 0.3),
      300: Color.fromRGBO(red, green, blue, 0.4),
      400: Color.fromRGBO(red, green, blue, 0.5),
      500: Color.fromRGBO(red, green, blue, 1),
      600: Color.fromRGBO(red, green, blue, 0.7),
      700: Color.fromRGBO(red, green, blue, 0.8),
      800: Color.fromRGBO(red, green, blue, 0.9),
      900: Color.fromRGBO(red, green, blue, 1.0),
    };
  }

  String get stringToHex {
    return '${alpha.toRadixString(16).padLeft(2, '0')}'
        '${red.toRadixString(16).padLeft(2, '0')}'
        '${green.toRadixString(16).padLeft(2, '0')}'
        '${blue.toRadixString(16).padLeft(2, '0')}';
  }

  Color darker(double intensity) {
    int min;
    if (red < blue && red < green) {
      min = red;
    } else if (green < blue) {
      min = green;
    } else {
      min = blue;
    }

    return Color.fromRGBO(
      red - (min * intensity).toInt(),
      green - (min * intensity).toInt(),
      blue - (min * intensity).toInt(),
      opacity,
    );
    // return hslColor.withLightness(intensity).toColor();
  }
}
