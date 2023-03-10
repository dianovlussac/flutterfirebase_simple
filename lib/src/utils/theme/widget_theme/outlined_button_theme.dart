import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/constants/colors.dart';
import 'package:flutterfirebase_login/src/constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5.0))),
    foregroundColor: tSecondaryColor,
    side: const BorderSide(color: tSecondaryColor),
    padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
  ));

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    shape: const RoundedRectangleBorder(),
    foregroundColor: tWhiteColor,
    side: const BorderSide(color: tWhiteColor),
    padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
  ));
}
