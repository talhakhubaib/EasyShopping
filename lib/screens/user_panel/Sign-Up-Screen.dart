import 'package:e_commerce/screens/user_panel/sign-in-screen.dart';
import 'package:e_commerce/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppConstant.appSecondaryColor,
          title: Text(
            'SIGN UP',
            style: GoogleFonts.titanOne(),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(children: [
              SizedBox(
                height: Get.height / 25,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Wellcome to my App',
                  style: TextStyle(
                      fontFamily: 'DM',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppConstant.appSecondaryColor),
                ),
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
                    keyboardType: TextInputType.name,
                    cursorColor: Color.fromRGBO(152, 18, 6, 1),
                    decoration: InputDecoration(
                        labelText: 'Username',
                        hintText: 'Username',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.person),
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
                    keyboardType: TextInputType.number,
                    cursorColor: Color.fromRGBO(152, 18, 6, 1),
                    decoration: InputDecoration(
                        labelText: ' Phone Number',
                        hintText: 'Phone',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.phone),
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
                    keyboardType: TextInputType.streetAddress,
                    cursorColor: Color.fromRGBO(152, 18, 6, 1),
                    decoration: InputDecoration(
                        labelText: 'Enter City',
                        hintText: 'City',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        prefixIcon: Icon(Icons.location_pin),
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
                    'SIGN UP',
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
                  Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(SigninScreen());
                    },
                    child: Text(
                      'SignIn',
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
