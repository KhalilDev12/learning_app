import 'package:flutter/material.dart';
import 'package:learning_app/Common/Utils/app_colors.dart';
import 'package:learning_app/Common/Widgets/button_widgets.dart';
import 'package:learning_app/Common/Widgets/text_widgets.dart';
import 'package:learning_app/Pages/SignIn/signInWidgets.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  late double deviceHeight, deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: signInAppBar(),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: deviceHeight * 0.03),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top SignIn Buttons
              thirdPartySignIn(deviceHeight, deviceWidth),

              // More SignIn Option Message
              Center(
                  child: text14Normal(
                      text: "Or use your email account to Sign In ")),
              SizedBox(height: deviceHeight * 0.05),

              // Email Text Box
              appTextField(
                  label: "Email",
                  height: deviceHeight * 0.07,
                  width: deviceWidth,
                  iconName: "assets/icons/user.png",
                  hintText: "Enter your Email address",
                  obscureText: false),
              SizedBox(height: deviceHeight * 0.03),

              // Password Text Box
              appTextField(
                  label: "Password",
                  height: deviceHeight * 0.07,
                  width: deviceWidth,
                  iconName: "assets/icons/lock.png",
                  hintText: "Enter your Password",
                  obscureText: true),
              SizedBox(height: deviceHeight * 0.01),

              // Forget Password message
              Container(child: textUnderLine(text: "Forget Password? ")),
              SizedBox(height: deviceHeight * 0.1),

              // Sign In Button
              appButton(deviceHeight * 0.07, deviceWidth, true, "Sign In"),
              SizedBox(height: deviceHeight * 0.03),

              // Sign UP Button
              appButton(deviceHeight * 0.07, deviceWidth, false, "Sign Up")
            ],
          ),
        ),
      ),
    );
  }
}
