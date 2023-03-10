import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/constants/colors.dart';
import 'package:flutterfirebase_login/src/features/authentication/controllers/onboarding_screen_controller.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangedCallBack,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obcontroller.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20)),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  color: tDarkColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            bottom: 79,
            left: 25,
            child: TextButton(
              onPressed: () => obcontroller.skip(),
              child: const Text(
                "Skip",
                style: TextStyle(
                  color: Color.fromARGB(255, 139, 136, 136),
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: obcontroller.currentPage.value,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Color(0xFF272727),
                  dotHeight: 3.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
