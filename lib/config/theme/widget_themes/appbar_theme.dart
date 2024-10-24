import 'package:flutter/material.dart';
import 'package:flutter_structure/core/resourse/app_colors.dart';
import 'package:flutter_structure/core/resourse/sizes.dart';

class ApplicationBarTheme {
  ApplicationBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.black, size: TSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: AppColors.black, size: TSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: AppColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AppColors.black, size: TSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: AppColors.white, size: TSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
        color: AppColors.white),
  );
}
