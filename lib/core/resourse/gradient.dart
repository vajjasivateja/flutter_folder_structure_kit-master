import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppGradients {
  static const LinearGradient raisedButtonGradient = LinearGradient(
    colors: [
      AppColors.primaryBlueDark,
      AppColors.primaryBlue,
    ],
    begin: Alignment.topLeft, // Alignment of the gradient start
    end: Alignment.topRight, // Alignment of the gradient end
  );
}
