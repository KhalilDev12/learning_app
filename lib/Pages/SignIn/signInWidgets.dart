import 'package:flutter/material.dart';
import 'package:learning_app/Common/Utils/app_colors.dart';
import 'package:learning_app/Common/Widgets/app_shadows.dart';
import 'package:learning_app/Common/Widgets/image_widgets.dart';
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

Widget appTextField({
  String label = "",
  required double height,
  required double width,
  String iconName = "assets/icons/user.png",
  String hintText = " Type in your info",
  bool obscureText = false,
}) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: label),
        Container(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          height: height,
          width: width,
          decoration: appBoxDecorationTextField(),
          // Row Contains Icon and TextField
          child: Row(children: [
            // Show Icon
            Container(
              child: appTextIcon(imagePath: iconName),
            ),
            // Show TextField
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: height * 0.4),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                  ),
                  onChanged: (value) {},
                  maxLines: 1,
                  autocorrect: false,
                  obscureText: obscureText,
                ),
              ),
            ),
          ]),
        ),
      ],
    ),
  );
}
