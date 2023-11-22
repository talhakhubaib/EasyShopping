import 'package:e_commerce/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appSecondaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Wellcome to my App',
        ),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            color: AppConstant.appSecondaryColor,
            child: SizedBox(
              height: Get.height / 2.6,
              child: OverflowBox(
                minHeight: 170,
                maxHeight: 170,
                child: Lottie.asset(
                  'assets/shopping-icon.json',
                ),
              ),
            ),
          ),
          // Container(
          //   color: AppConstant.appSecondaryColor,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage('assets/shopping-icon.json'),
          //         fit: BoxFit.cover
          //         // child: Lottie.asset('assets/shopping-icon.json',),
          //         ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Happy Shopping',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: Get.height / 12,
          ),
          Material(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppConstant.appSecondaryColor,
              ),
              height: Get.height / 12,
              width: Get.width / 1.2,
              child: TextButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/Google-icon.png',
                  height: Get.height / 12,
                  width: Get.width / 12,
                ),
                label: Text(
                  'Sign in with Google',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height / 40,
          ),
          Material(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppConstant.appSecondaryColor,
              ),
              height: Get.height / 12,
              width: Get.width / 1.2,
              child: TextButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'assets/Email-icon.png',
                  height: Get.height / 12,
                  width: Get.width / 12,
                ),
                label: Text(
                  'Sign in with Email',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
