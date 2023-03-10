import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              LineAwesomeIcons.angle_left,
              color: Colors.black,
            )),
        title: Text(tEditProfile, style: Theme.of(context).textTheme.bodyLarge),
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
                        LineAwesomeIcons.camera,
                        size: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person),
                        labelText: tFullName,
                        labelStyle: Theme.of(context).textTheme.bodySmall,
                        contentPadding: const EdgeInsets.all(15),
                      ),
                    ),
                    const SizedBox(height: tFormHeight - 15),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.mail),
                        labelText: tEmail,
                        labelStyle: Theme.of(context).textTheme.bodySmall,
                        contentPadding: const EdgeInsets.all(15),
                      ),
                    ),
                    const SizedBox(height: tFormHeight - 15),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.smartphone_outlined),
                        labelText: tPhone,
                        labelStyle: Theme.of(context).textTheme.bodySmall,
                        contentPadding: const EdgeInsets.all(15),
                      ),
                    ),
                    const SizedBox(height: tFormHeight - 15),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        labelText: tPassword,
                        labelStyle: Theme.of(context).textTheme.bodySmall,
                        contentPadding: const EdgeInsets.all(15),
                      ),
                    ),
                    const SizedBox(height: tFormHeight),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(tEditProfile,
                            style: TextStyle(color: tDarkColor)),
                      ),
                    )
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
