import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/Common/Utils/app_colors.dart';

BoxDecoration appBoxShadow(
    {Color color = AppColors.primaryElement,
    double radius = 15,
    sR = 1.0,
    bR = 2.0,
    BoxBorder? border}) {
  return BoxDecoration(
      border: border,
      color: color,
      borderRadius: BorderRadius.circular(radius),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.1),
          spreadRadius: sR,
          blurRadius: bR,
          offset: const Offset(0, 1),
        ),
      ]);
}

BoxDecoration appBoxDecorationTextField(
    {Color backgroundColor = AppColors.primaryBackground,
    double radius = 15,
    Color borderColor = AppColors.primaryFourElementText}) {
  return BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: borderColor));
}
