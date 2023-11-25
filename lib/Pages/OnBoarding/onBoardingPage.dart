import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_app/Common/Utils/app_colors.dart';
import 'package:learning_app/Models/onBoardingModel.dart';
import 'package:learning_app/Pages/OnBoarding/onBoardingWidgets.dart';

import 'notifier/onBoarding_notifier.dart';

class OnBoardingPage extends ConsumerWidget {
  OnBoardingPage({Key? key}) : super(key: key);

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    final index = ref.watch(dotIndexProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 15, left: 8, right: 8),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              // Showing our three Welcome pages
              PageView.builder(
                controller: pageController,
                onPageChanged: (value) {
                  ref.read(dotIndexProvider.notifier).changeIndex(value);
                },
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) {
                  return appOnBoardingPage(
                      context, deviceHeight, deviceWidth, onBoardingList[index],
                      pageController: pageController, index: index);
                },
              ),

              // Showing three dots indicator
              Positioned(
                  bottom: 0,
                  child: DotsIndicator(
                    dotsCount: onBoardingList.length,
                    decorator: DotsDecorator(
                      activeColor: AppColors.primaryElement,
                      size: Size.square(deviceHeight * 0.01),
                      activeSize: Size(deviceWidth * 0.05, deviceHeight * 0.01),
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    position: index,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
