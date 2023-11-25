import 'package:flutter/material.dart';
import 'package:learning_app/Common/Utils/app_colors.dart';
import 'package:learning_app/Common/Widgets/text_widgets.dart';

AppBar signInAppBar() {
  return AppBar(
    bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: Colors.red,
          height: 1,
        )),
    title: text16Normal(text: "Login", color: AppColors.primaryText),
    centerTitle: true,
  );
}

Widget thirdPartySignIn(double devHeight, double devWidth) {
  return Container(
    margin: EdgeInsets.symmetric(
        vertical: devHeight * 0.03, horizontal: devWidth * 0.1),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        thirdPartyButton(
            devHeight * 0.07, devHeight * 0.07, "assets/icons/google.png"),
        thirdPartyButton(
            devHeight * 0.07, devHeight * 0.07, "assets/icons/apple.png"),
        thirdPartyButton(
            devHeight * 0.07, devHeight * 0.07, "assets/icons/facebook.png"),
      ],
    ),
  );
}

Widget thirdPartyButton(double height, double width, String imagePath) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: height,
      width: width,
      child: Image.asset(imagePath),
    ),
  );
}
