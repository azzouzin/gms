import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isloding = false;

  Future<String> signUp(SignupData data) async {
    await Future.delayed(Duration(seconds: 3));
    print(data.name);
    print(data.password);
    return 'Ok';
  }

  Future<String> signIn(LoginData data) async {
    await Future.delayed(Duration(seconds: 3));
    print(data.name);
    print(data.password);
    return 'Ok';
    //await Future.delayed(Duration(seconds: 3));
  }

  Future<String> recover(String data) async {
    await Future.delayed(Duration(seconds: 3));
    print(data);

    return 'Ok';
    //await Future.delayed(Duration(seconds: 3));
  }
}
