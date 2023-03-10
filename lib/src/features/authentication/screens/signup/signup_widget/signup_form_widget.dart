// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/features/authentication/controllers/signup_controller.dart';
import 'package:flutterfirebase_login/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 30),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullname,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                labelText: tFullName,
                labelStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.mail),
                labelText: tEmail,
                labelStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.smartphone_outlined),
                labelText: tPhone,
                labelStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                labelText: tPassword,
                labelStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              controller: controller.confirmPassword,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                labelText: tConfirmPassword,
                labelStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    SignUpController.instance.registerUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
                    //SignUpController.instance
                    //.phoneAuthentication(controller.phoneNo.text.trim());
                    Get.to(() => const OTPScreen());
                  }
                },
                child: Text(
                  tSignUp.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
