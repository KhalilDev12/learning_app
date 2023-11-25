import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          // Top SignIn Buttons
          thirdPartySignIn(deviceHeight, deviceWidth),

          // More SignIn Option Message
          text14Normal(text:"Or use your email account to Sign In " ),
        ],
      ),
    );
  }
}
