import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/Common/Utils/app_colors.dart';

Widget text24Normal({String text = "", Color color = AppColors.primaryText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.normal,
      fontSize: 24,
    ),
  );
}

Widget text16Normal(
    {String text = "", Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.normal,
      fontSize: 16,
    ),
  );
}

Widget text14Normal(
    {String text = "", Color color = AppColors.primaryThreeElementText}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
  );
}

Widget textUnderLine({String text = ""}) {
  return GestureDetector(
    onTap: () {},
    child: Text(text,
        style: const TextStyle(
          color: AppColors.primaryText,
          fontWeight: FontWeight.normal,
          fontSize: 14,
          decoration: TextDecoration.underline,
          decorationColor: AppColors.primaryText,
        )),
  );
}
