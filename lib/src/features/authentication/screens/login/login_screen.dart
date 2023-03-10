import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/constants/image_strings.dart';
import 'package:flutterfirebase_login/src/constants/sizes.dart';
import 'login_widget/login_footer_widget.dart';
import 'login_widget/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: const AssetImage(tSplashImage),
                  height: size.height * 0.28,
                  alignment: Alignment.center,
                ),
                const LoginForm(),
                const SizedBox(
                  height: tFormHeight - 20,
                ),
                const LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
