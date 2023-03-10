import 'package:flutter/material.dart';
import '../../../../constants/sizes.dart';
import '../../models/model_onboarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.35,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                model.subTitle,
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(
            model.counterText,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(
            height: 90,
          )
        ],
      ),
    );
  }
}
