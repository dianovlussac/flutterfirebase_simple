import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/constants/colors.dart';
import 'package:flutterfirebase_login/src/constants/image_strings.dart';
import 'package:flutterfirebase_login/src/constants/sizes.dart';
import 'package:flutterfirebase_login/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:flutterfirebase_login/src/features/core/screens/profile/widget/profile_menu.dart';
import 'package:flutterfirebase_login/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../../../constants/text_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              LineAwesomeIcons.angle_left,
              color: Colors.black,
            )),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                LineAwesomeIcons.moon,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(image: AssetImage(tProfileImage))),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 27,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tSecondaryColor,
                      ),
                      child: const Icon(
                        LineAwesomeIcons.alternate_pencil,
                        size: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(tProfileHeading,
                  style: Theme.of(context).textTheme.bodyLarge),
              Text(tProfileSubHeading,
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(height: 15),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const UpdateProfileScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      side: BorderSide.none, shape: const StadiumBorder()),
                  child: const Text(tEditProfile),
                ),
              ),
              const SizedBox(height: 15),
              const Divider(),
              const SizedBox(height: 10),

              //menu
              ProfileMenuWidget(
                  title: "Settings",
                  icon: LineAwesomeIcons.cog,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Billing Details",
                  icon: LineAwesomeIcons.wallet,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "User Management",
                  icon: LineAwesomeIcons.user_check,
                  onPress: () {}),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),
              ProfileMenuWidget(
                  title: "Information",
                  icon: LineAwesomeIcons.info,
                  onPress: () {}),
              ProfileMenuWidget(
                  title: "Logout",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: () {
                    AuthenticationRepository.instance.logout();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
