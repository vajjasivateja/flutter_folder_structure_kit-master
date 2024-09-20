import 'package:flutter/material.dart';

import '../constants/theme_constants.dart';
import 'app_colors.dart';
import 'app_theme.dart';

class AppTextStyles {
  /// big size 30 with black textColor
  static TextStyle extraBigLightTextWithBlackTextColor = UiTheme().font(size: 30, color: AppColors.black, fontName: FONT_LIGHT);

  static TextStyle bigRegularTextWithBlackTextColor = UiTheme().font(size: 24, color: AppColors.black, fontName: FONT_REGULAR);
  static TextStyle bigBoldTextWithBlackTextColor = UiTheme().font(size: 24, color: AppColors.black, fontName: FONT_BOLD);
  

  /// default size 16 with black textColor
  static TextStyle defaultRegularTextWithBlackTextColor = UiTheme().font(size: 16.0, color: AppColors.black, fontName: FONT_REGULAR);
  static TextStyle defaultBoldTextWithBlackTextColor = UiTheme().font(size: 16.0, color: AppColors.black, fontName: FONT_BOLD);

  static TextStyle defaultLightTextWithBlackTextColor = UiTheme().font(size: 16, color: AppColors.black, fontName: FONT_LIGHT);

  /// small size 14 with black textColor
  static TextStyle smallBoldTextWithBlackTextColor = UiTheme().font(size: 14, color: AppColors.black, fontName: FONT_BOLD);
  static TextStyle smallRegularTextWithBlackTextColor = UiTheme().font(size: 14, color: AppColors.black, fontName: FONT_REGULAR);
  static TextStyle smallLightTextWithBlackTextColor = UiTheme().font(size: 14, color: AppColors.black, fontName: FONT_LIGHT);

  /// extraSmall size 12 with black textColor
  static TextStyle extraSmallBoldTextWithBlackTextColor = UiTheme().font(size: 12, color: AppColors.black, fontName: FONT_BOLD);
  static TextStyle extraSmallRegularTextWithBlackTextColor = UiTheme().font(size: 12, color: AppColors.black, fontName: FONT_REGULAR);
  static TextStyle extraSmallLightTextWithBlackTextColor = UiTheme().font(size: 12, color: AppColors.black, fontName: FONT_LIGHT);

  ///default
  static TextStyle defaultBoldTextWithCustomTextColor(Color color) {
    return UiTheme().font(size: 16, color: color, fontName: FONT_BOLD);
  }

  static TextStyle defaultRegularTextWithCustomTextColor(Color color) {
    return UiTheme().font(size: 16, color: color, fontName: FONT_REGULAR);
  }

  static TextStyle defaultLightTextWithCustomTextColor(Color color) {
    return UiTheme().font(size: 16, color: color, fontName: FONT_LIGHT);
  }

  ///small
  static TextStyle smallBoldTextWithCustomTextColor(Color color) {
    return UiTheme().font(size: 14, color: color, fontName: FONT_BOLD);
  }

  static TextStyle smallRegularTextWithCustomTextColor(Color color) {
    return UiTheme().font(size: 14, color: color, fontName: FONT_REGULAR);
  }

  ///extra small
  static TextStyle extraSmallBoldTextWithCustomTextColor(Color color) {
    return UiTheme().font(size: 12, color: color, fontName: FONT_BOLD);
  }

  static TextStyle extraSmallRegularTextWithCustomTextColor(Color color) {
    return UiTheme().font(size: 12, color: color, fontName: FONT_REGULAR);
  }

  static TextStyle extraSmallLightTextWithCustomTextColor(Color color) {
    return UiTheme().font(size: 12, color: color, fontName: FONT_LIGHT);
  }

  ///custom
  static TextStyle customSizeBoldTextWithCustomTextColor({required Color color, required double fontSize,}) {
    return UiTheme().font(size: fontSize, color: color, fontName: FONT_BOLD);
  }

  static TextStyle customSizeRegularTextWithCustomTextColor({required Color color, required double fontSize}) {
    return UiTheme().font(size: fontSize, color: color, fontName: FONT_REGULAR);
  }

  static TextStyle customSizeLightTextWithCustomTextColor({required Color color, required double fontSize}) {
    return UiTheme().font(size: fontSize, color: color, fontName: FONT_LIGHT);
  }
}
