import 'package:e_commerce/screens/user_panel/Sign-Up-Screen.dart';
import 'package:e_commerce/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppConstant.appSecondaryColor,
          title: Text('SIGN IN', style: GoogleFonts.titanOne()),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(children: [
              isKeyboardVisible
                  ? SizedBox.shrink()
                  : Column(
                      children: [
                        Lottie.asset(
                          'assets/shopping-icon.json',
                        ),
                      ],
                    ),
              SizedBox(
                height: Get.height / 12,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Color.fromRGBO(152, 18, 6, 1),
                    decoration: InputDecoration(
                        labelText: ' Email Address',
                        hintText: 'Email',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.email),
                        contentPadding: EdgeInsets.only(top: 20, left: 8),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    cursorColor: Color.fromRGBO(152, 18, 6, 1),
                    decoration: InputDecoration(
                        labelText: ' Password',
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.visibility_off),
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.password),
                        contentPadding: EdgeInsets.only(top: 20, left: 8),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppConstant.appMainColor,
                      decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(
                height: Get.height / 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppConstant.appSecondaryColor,
                ),
                height: Get.height / 20,
                width: Get.width / 2,
                child: Center(
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: AppConstant.apptextColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: Get.height / 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have any account? "),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(SignupScreen());
                    },
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: AppConstant.appSecondaryColor),
                    ),
                  )
                ],
              )
            ]),
          ),
        ),
      );
    });
  }
}
