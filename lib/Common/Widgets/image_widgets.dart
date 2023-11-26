import 'package:flutter/material.dart';

Widget appTextIcon(
    {String imagePath = "assets/icons/user.png",
    double width = 16,
    double height = 16}) {
  return Image.asset(
    imagePath,
    width: width,
    height: height,
  );
}
