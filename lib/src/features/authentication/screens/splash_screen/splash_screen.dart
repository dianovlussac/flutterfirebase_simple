import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutterfirebase_login/src/constants/image_strings.dart';
import 'package:get/get.dart';

import '../login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 5)).then((value) {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              tSplashImage,
              width: 1000,
            ),
            const SizedBox(
              height: 1,
            ),
            const SpinKitWave(
              color: Color.fromARGB(255, 240, 183, 79),
              size: 55,
            ),
          ],
        ),
      ),
    );
  }
}
