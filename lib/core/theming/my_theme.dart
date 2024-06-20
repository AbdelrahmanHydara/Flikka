import 'package:flutter/material.dart';
import 'package:flikka/core/theming/my_colors.dart';

class MyTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: MyColors.darkBlueColor,
    appBarTheme: const AppBarTheme(
      color: MyColors.primaryColor,
      centerTitle: true,
    ),
  );

}