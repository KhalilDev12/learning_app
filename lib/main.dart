import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_app/Common/Utils/app_colors.dart';
import 'package:learning_app/Pages/SignIn/signInPage.dart';
import 'Pages/OnBoarding/onBoardingPage.dart';

void main() {
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryElement),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => OnBoardingPage(),
        "/signIn": (context) => SignInPage(),
      },
    );
  }
}
