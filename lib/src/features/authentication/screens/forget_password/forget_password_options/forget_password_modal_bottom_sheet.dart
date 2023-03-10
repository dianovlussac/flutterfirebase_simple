import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:get/get.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_button_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgetPasswordTitle,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(
              height: 30,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subtitle: tResetViaEmail,
              onTap: () {
                Get.to(() => const ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(
              height: 15,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhone,
              subtitle: tResetViaPhone,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
