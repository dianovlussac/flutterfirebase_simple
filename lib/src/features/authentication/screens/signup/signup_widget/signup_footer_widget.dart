import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/features/authentication/screens/login/login_screen.dart';
import 'package:get/get.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OR',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(tGoogleLogoImage),
              width: 25.0,
            ),
            label: Text(
              tSignInWithGoogle,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            Get.to(() => const LoginScreen());
          },
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: tAlreadyHaveAnAccount,
                  style: Theme.of(context).textTheme.displayMedium,
                  children: [
                    TextSpan(
                      text: tLogin.toUpperCase(),
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
