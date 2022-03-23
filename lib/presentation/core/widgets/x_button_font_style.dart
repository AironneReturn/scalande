import 'package:flutter/material.dart';

class XButtonFontStyle implements MaterialStateProperty<TextStyle> {
  final double fontSize;
  final Color color;

  const XButtonFontStyle({
    this.color = Colors.white,
    this.fontSize = 14,
  });

  @override
  TextStyle resolve(Set<MaterialState> states) {
    // Always return the same border no matter what is the state
    return TextStyle(
      fontSize: fontSize,
      color: color,
    );
  }
}
