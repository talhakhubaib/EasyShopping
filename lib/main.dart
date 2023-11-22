import 'package:e_commerce/screens/user_panel/Sign-Up-Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'screens/user_panel/sign-in-screen.dart';
// import 'screens/user_panel/splash.dart';
// import 'screens/user_panel/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo', theme: ThemeData(), home: SignupScreen());
  }
}
