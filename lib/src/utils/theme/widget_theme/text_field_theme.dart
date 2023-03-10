import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/constants/colors.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    prefixIconColor: tSecondaryColor,
    floatingLabelStyle: TextStyle(color: tSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 3, color: tSecondaryColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: tSecondaryColor,
    floatingLabelStyle: TextStyle(color: tSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 3, color: tSecondaryColor),
    ),
  );
}
