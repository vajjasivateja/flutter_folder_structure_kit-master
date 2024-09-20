import 'package:flutter/material.dart';

class UiTheme {
  TextStyle font({
    double size = 14,
    Color? color,
    String? fontName,
    bool isBold = false,
    Shadow? shadow,
    FontWeight? fontWeight,
    TextDecoration decoration = TextDecoration.none,
    bool isItalic = false,
    List<FontFeature>? fontFeatures,
    double? textScaleFactor,
    double? letterSpacing
  }) {
    return TextStyle(
      fontSize: (size) * (textScaleFactor ?? 1.0),
      color: color ?? Colors.black,
      fontWeight: fontWeight ?? (isBold ? FontWeight.bold : FontWeight.normal),
      shadows: shadow != null ? [shadow] : [],
      decoration: decoration,
      fontFamily: fontName,
      fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
      fontFeatures: fontFeatures,
      letterSpacing: letterSpacing
    );

  }
}
