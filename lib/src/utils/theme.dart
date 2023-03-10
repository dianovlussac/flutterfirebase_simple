import 'package:flutter/material.dart';
import 'package:flutterfirebase_login/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:flutterfirebase_login/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:flutterfirebase_login/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:flutterfirebase_login/src/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}
