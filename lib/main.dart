import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jms/Controllers/Bindings/auth_bindings.dart';
import 'package:jms/Views/LoginView/login_page.dart';
import 'package:jms/Views/LoginView/splash_view.dart';

initOperations() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: LoginPage(),

      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:()=> SplashPage(),binding:AuthBindings());
        GetPage(
          name: '/login',
          page: () => LoginPage(),
          bindings: [AuthBindings()],
        )
      ],
    );
  }
}
