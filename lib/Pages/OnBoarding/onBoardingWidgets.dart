import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/Common/Widgets/app_shadows.dart';
import 'package:learning_app/Models/onBoardingModel.dart';
import 'package:learning_app/Pages/SignIn/signInPage.dart';

import '../../Common/Widgets/text_widgets.dart';

Widget appOnBoardingPage(
    BuildContext context, double Dheight, double Dwidth, onBoardingModel model,
    {required PageController pageController, int index = 0}) {
  return Column(
    children: [
      Container(
        height: Dheight * 0.5,
        width: Dheight * 0.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              model.image,
            ),
          ),
        ),
      ),
      SizedBox(height: Dheight * 0.01),
      text24Normal(text: model.title),
      SizedBox(height: Dheight * 0.02),
      text16Normal(text: model.desc),
      Spacer(),
      _nextButton(context, Dheight, Dwidth, pageController, index),
    ],
  );
}

Widget _nextButton(BuildContext context, double height, double width,
    PageController pageController, int index) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        pageController.animateToPage(index++,
            duration: const Duration(milliseconds: 350), curve: Curves.linear);
      } else {
        Navigator.of(context).pushNamed("/signIn");
      }
    },
    child: Container(
      height: 50,
      width: width * 0.8,
      margin: EdgeInsets.only(bottom: height * 0.04),
      decoration: appBoxShadow(),
      child: Center(
          child: text16Normal(
              text: index == 2 ? "Get Started" : "Next", color: Colors.white)),
    ),
  );
}
