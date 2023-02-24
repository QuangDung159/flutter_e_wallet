// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_e_wallet/UI/screens/splash_screen.dart';
import 'package:flutter_e_wallet/core/constants/app_colors.dart';
import 'package:flutter_e_wallet/core/constants/common.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/route_manager.dart';

void main() {
  Stripe.publishableKey = stripePublishableKey;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter E-Commerce App',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primaryColor: AppColors.primaryBlue,
        scaffoldBackgroundColor: AppColors.bgSecondary,
        backgroundColor: AppColors.bgSecondary,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: AppColors.textDefault,
              displayColor: AppColors.textDefault,
              fontFamily: 'Nunito',
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
