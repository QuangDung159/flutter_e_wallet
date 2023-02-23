// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_e_wallet/UI/screens/main_screen.dart';
import 'package:flutter_e_wallet/core/constants/app_colors.dart';
import 'package:flutter_e_wallet/core/helpers/common_helper.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      Get.offAll(() => MainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    setStatusBarColor(context, Brightness.light);
    return Scaffold(
      backgroundColor: AppColors.bgSecondary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'E-WALLET',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 26,
              ),
            ),
            // VersionText(),
          ],
        ),
      ),
    );
  }
}
