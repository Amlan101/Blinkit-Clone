import 'dart:async';

import 'package:flutter/material.dart';

import '../../../domain/constants/appcolors.dart';
import '../../widgets/uihelper.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3),(){
  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(img: "blinkit_logo.png"),
          ],),
      ),
    );
  }
}