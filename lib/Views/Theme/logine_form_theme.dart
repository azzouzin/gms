import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:jms/Views/Theme/colors.dart';

abstract class MyTheme {
  static LoginTheme myLoginTheme = LoginTheme(
    logoWidth: 0.2,
    cardTopPosition: Get.width / 2,
    pageColorLight: mainColor,
    pageColorDark: mainColor2,
    //    cardInitialHeight: Get.height * 0.7,
    cardTheme: const CardTheme(color: Colors.white, surfaceTintColor: white),
    primaryColor: mainColor,
    buttonTheme: const LoginButtonTheme(
        backgroundColor: mainColor,
        highlightColor: mainColor2,
        splashColor: white),
    textFieldStyle: const TextStyle(color: white),
    accentColor: white,
    // inputTheme: InputDecorationTheme(),
    footerBackgroundColor: white,
    titleStyle: const TextStyle(
        color: white, fontSize: 20, fontWeight: FontWeight.w700),
  );
}
