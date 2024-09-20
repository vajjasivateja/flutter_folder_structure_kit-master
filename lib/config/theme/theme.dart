import 'package:flutter/material.dart';
import 'package:flutter_structure/config/theme/widget_themes/appbar_theme.dart';
import 'package:flutter_structure/config/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:flutter_structure/config/theme/widget_themes/checkbox_theme.dart';
import 'package:flutter_structure/config/theme/widget_themes/chip_theme.dart';
import 'package:flutter_structure/config/theme/widget_themes/elevated_button_theme.dart';
import 'package:flutter_structure/config/theme/widget_themes/outlined_button_theme.dart';
import 'package:flutter_structure/config/theme/widget_themes/text_field_theme.dart';
import 'package:flutter_structure/config/theme/widget_themes/text_theme.dart';
import 'package:flutter_structure/core/resourse/app_colors.dart';


class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.gray,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryBlue,
    textTheme: AppTextTheme.lightTextTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: ApplicationBarTheme.lightAppBarTheme,
    checkboxTheme: AppCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: AppColors.gray,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryBlue,
    textTheme: AppTextTheme.darkTextTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    scaffoldBackgroundColor: AppColors.black,
    appBarTheme: ApplicationBarTheme.darkAppBarTheme,
    checkboxTheme: AppCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme,
  );
}
