import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/Common/Utils/app_colors.dart';
import 'package:learning_app/Common/Widgets/app_shadows.dart';
import 'package:learning_app/Common/Widgets/text_widgets.dart';

Widget appButton(double height, double width, bool isLogin, String buttonText) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: height,
      width: width,
      decoration: appBoxShadow(
          color: isLogin ? AppColors.primaryElement : Colors.white,
          border: Border.all(color: AppColors.primaryFourElementText)),
      child: Center(
        child: text16Normal(
            text: buttonText,
            color:
                isLogin ? AppColors.primaryBackground : AppColors.primaryText),
      ),
    ),
  );
}
