import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:get/get.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "OR",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: const Image(
                image: AssetImage(tGoogleLogoImage),
                width: 26,
              ),
              onPressed: () {},
              label: Text(
                tSignInWithGoogle,
                style: Theme.of(context).textTheme.titleMedium,
              )),
        ),
        const SizedBox(
          height: tFormHeight + 30,
        ),
        TextButton(
          onPressed: () {
            Get.to(() => const SignUpScreen());
          },
          child: Text.rich(
            TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.displayMedium,
                children: [
                  TextSpan(
                      text: tSignUp.toUpperCase(),
                      style: const TextStyle(color: Colors.blue))
                ]),
          ),
        ),
      ],
    );
  }
}
