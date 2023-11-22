import 'package:e_commerce/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstant.Mainappname,
        ),
        centerTitle: true,
        backgroundColor: AppConstant.appMainColor,
      ),
      body: Column(
        children: [
          Center(child: Text('Wellcome to Main Screen')),
        ],
      ),
    );
  }
}
