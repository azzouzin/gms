import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:jms/Controllers/Bindings/auth_bindings.dart';
import 'package:jms/Controllers/UserControllers/auth_controller.dart';
import 'package:jms/Views/Theme/colors.dart';
import 'package:logger/logger.dart';

import '../Theme/logine_form_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthController _authController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FlutterLogin(
          title: 'General Maintanance Service',
          logo: 'assets/images/logo.png',
          onLogin: _authController.signIn,
          onSignup: _authController.signUp,
          theme: MyTheme.myLoginTheme,
          additionalSignupFields: const [
            UserFormField(
                keyName: 'phone',
                displayName: 'Phone',
                icon: Icon(Icons.phone),
                userType: LoginUserType.phone,
                defaultValue: '0562413935'),
            UserFormField(keyName: 'wilaya', userType: LoginUserType.text)
          ],
          onSubmitAnimationCompleted: () {
            /* Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const DashboardScreen(),
            ));*/
            Logger().i("OK");
          },
          onRecoverPassword: _authController.recover,
          children: const [
            Positioned(
              top: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 25,
                    width: 5000,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
