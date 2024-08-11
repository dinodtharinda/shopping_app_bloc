import 'package:flutter/material.dart';
import 'colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: CustomColor.lightColor,
    primaryColor: CustomColor.primaryColor,
    appBarTheme: const AppBarTheme(color: CustomColor.lightColor),
    cardColor: CustomColor.lightColor,


    //dark mode
    primaryColorLight: CustomColor.lightColor,
    primaryColorDark: CustomColor.backColor,

    
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: CustomColor.darkColor,
    primaryColor: CustomColor.primaryColor,
    appBarTheme:  AppBarTheme(color: CustomColor.darkColor),
    cardColor: CustomColor.secondDarkColor,

    //dark mode
    primaryColorLight: CustomColor.backColor,
    primaryColorDark: CustomColor.lightColor,
    bottomAppBarTheme:  BottomAppBarTheme(color: CustomColor.secondDarkColor),
  );
}




