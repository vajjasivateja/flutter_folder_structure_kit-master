import 'dart:io';
import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:t_store/core/resourse/app_colors.dart';

import '../common/logger_dev.dart';

class ImageUtil {
  ImageUtil._builder();

  static Widget loadImage(String imageUrl, {BoxFit fit = BoxFit.cover, double? width, double? height, Widget? placeHolder, Widget? errorWidget}) {
    final targetPlaceHolder = placeHolder ?? Center(child: SizedBox(height: 30.0, width: 30.0, child: CircularProgressIndicator(strokeWidth: 1.5, valueColor: new AlwaysStoppedAnimation<Color>(AppColors.greyColor), backgroundColor: AppColors.greyColor)));
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      placeholder: (context, url) => targetPlaceHolder,
      errorWidget: (context, url, error) =>
          errorWidget ??
          const Center(
              child: Icon(
            LineAwesomeIcons.exclamation_solid,
            color: AppColors.greyColor,
            size: 24,
          )),
    );
  }

  static ImageProvider loadImageProvider(String imageUrl) {
    return CachedNetworkImageProvider(imageUrl);
  }

  static Widget loadSvg(String filename, {double? width, double? height, Color? color, String? package, BoxFit fit = BoxFit.scaleDown}) {
    logger.d('imageUrl: assets/images/$filename');
    return SvgPicture.asset(
      'assets/images/$filename',
      height: width,
      width: height,
      package: package,
      fit: fit,
    );
  }

  static Widget loadImageLocal(String path, double width, double height, {BoxFit fit = BoxFit.cover, Uint8List? thumbdata}) {
    if (thumbdata == null) {
      return Image.file(
        File(path),
        width: width,
        height: height,
        fit: fit,
      );
    }
    return Image.memory(thumbdata, width: width, height: height, fit: fit);
  }
}
