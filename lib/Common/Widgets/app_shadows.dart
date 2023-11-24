import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/Common/Utils/app_colors.dart';

BoxDecoration appBoxShadow(
    {Color color = AppColors.primaryElement,
    double radius = 15,
    sR = 1.0,
    bR = 2.0}) {
  return BoxDecoration(
      color: AppColors.primaryElement,
      borderRadius: BorderRadius.circular(radius),
      boxShadow: [
        BoxShadow(
          color: color,
          spreadRadius: sR,
          blurRadius: bR,
          offset: const Offset(0, 1),
        ),
      ]);
}
