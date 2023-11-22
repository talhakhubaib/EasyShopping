import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../utils/app_constant.dart';
import 'wellcome-screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Get.offAll(WellcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: AppConstant.appSecondaryColor, elevation: 0),
      body: Container(
        color: AppConstant.appSecondaryColor,
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 230,
                child: OverflowBox(
                  minHeight: 170,
                  maxHeight: 170,
                  child: Lottie.asset(
                    'assets/shopping-icon.json',
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              width: Get.width,
              alignment: Alignment.center,
              child: Text(
                AppConstant.Powerdby,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
