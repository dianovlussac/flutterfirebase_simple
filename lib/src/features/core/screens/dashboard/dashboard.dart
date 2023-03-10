import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/features/core/screens/profile/profile_screen.dart';
import 'package:get/get.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: Text(tAppName, style: Theme.of(context).textTheme.displayLarge),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
                onPressed: () {
                  Get.to(() => const ProfileScreen());
                },
                icon: const Image(image: AssetImage(tUserProfileImage))),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tDashboardTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                tDashboardHeading,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(
                height: 10.0,
              ),

              //Search Box
              Container(
                decoration: const BoxDecoration(
                    border: Border(left: BorderSide(width: 4))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tDashboardSearch,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Icon(
                      Icons.mic_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
