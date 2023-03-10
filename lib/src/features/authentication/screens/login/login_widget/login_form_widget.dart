import 'package:flutter/material.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../forget_password/forget_password_options/forget_password_modal_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: tFormHeight - 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.mail),
                labelText: tEmailUser,
                labelStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                labelText: tPassword,
                labelStyle: Theme.of(context).textTheme.bodySmall,
                contentPadding: const EdgeInsets.all(10),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text(
                  tForgetPassword,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    tLogin.toUpperCase(),
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
