import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutterfirebase_login/src/common_widgets/form/form_header_widget.dart';
import 'package:flutterfirebase_login/src/constants/image_strings.dart';
import 'package:flutterfirebase_login/src/constants/sizes.dart';
import 'package:flutterfirebase_login/src/constants/text_strings.dart';
import 'package:flutterfirebase_login/src/features/authentication/controllers/otp_controller.dart';
import 'package:get/get.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          children: [
            const SizedBox(
              height: tDefaultSize * 4,
            ),
            const FormHeaderWidget(
              image: tOnThePhone,
              title: tOtpTitle,
              subTitle: tOtpSubtitle,
              heightBetween: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                otp = code;
                OTPController.instance.verifyOTP(otp);
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      OTPController.instance.verifyOTP(otp);
                    },
                    child: const Text(tNext))),
          ],
        ),
      ),
    );
  }
}
