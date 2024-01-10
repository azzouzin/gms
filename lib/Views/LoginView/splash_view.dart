import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jms/Controllers/UserControllers/auth_controller.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final AuthController _authController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
