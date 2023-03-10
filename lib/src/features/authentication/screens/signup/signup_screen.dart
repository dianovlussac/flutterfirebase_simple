import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/constants/sizes.dart';
import '../../../../constants/image_strings.dart';
import 'signup_widget/signup_footer_widget.dart';
import 'signup_widget/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize - 8),
          child: Column(
            children: const [
              SizedBox(
                height: tDefaultSize * 1.5,
              ),
              Image(image: AssetImage(tSplashImage)),
              SizedBox(
                height: 25,
              ),
              SignUpFormWidget(),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 5,
              ),
              SignUpFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
