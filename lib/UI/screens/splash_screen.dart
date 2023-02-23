// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_e_wallet/UI/screens/main_screen.dart';
import 'package:flutter_e_wallet/core/constants/app_colors.dart';
import 'package:flutter_e_wallet/core/helpers/asset_helper.dart';
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
      // Get.offAll(() => MainScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    setStatusBarColor(context, Brightness.light);
    return Scaffold(
      backgroundColor: AppColors.bgSecondary,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetHelper.imageLogo,
                  width: 96,
                  height: 96,
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'E-WALLET',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'APPLICATION',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 13,
                    letterSpacing: 6,
                  ),
                ),
                // VersionText(),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom,
            left: 0,
            right: 0,
            child: Text(
              '2019. All rights reserved',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
