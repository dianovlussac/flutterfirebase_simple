import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/firebase_options.dart';
import 'package:flutterfirebase_login/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutterfirebase_login/src/utils/theme.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: TAppTheme.darkTheme,
      theme: TAppTheme.lightTheme,
      themeMode: ThemeMode.system,
      home: const CircularProgressIndicator(),
    );
  }
}
