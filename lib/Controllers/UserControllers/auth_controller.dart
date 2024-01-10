import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:jms/Models/Service/auth_services.dart';
import 'package:logger/logger.dart';

class AuthController extends GetxController {
  // Declaring Services
  AuthServices _authServices = AuthServices();

  // Declaring UI State Variables
  bool isloding = false;

// Declaring Services Varibales

  User? user;

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

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    user = _authServices.checkCurrentUser();
  }
}
