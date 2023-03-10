import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/common_widgets/form/form_header_widget.dart';
import 'package:flutterfirebase_login/src/constants/image_strings.dart';
import 'package:flutterfirebase_login/src/constants/sizes.dart';
import 'package:flutterfirebase_login/src/constants/text_strings.dart';
import 'package:flutterfirebase_login/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:get/get.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const SizedBox(
                  height: tDefaultSize * 4,
                ),
                const FormHeaderWidget(
                  title: tForgetPassword,
                  subTitle: tForgetPasswordSubTitle,
                  image: tResetPassword,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 25.0,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: tDefaultSize - 10,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.mail),
                          labelText: tEmail,
                          labelStyle: Theme.of(context).textTheme.bodySmall,
                          contentPadding: const EdgeInsets.all(15),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const OTPScreen());
                            },
                            child: Text(tNext.toUpperCase())),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
