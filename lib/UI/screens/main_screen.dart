// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_e_wallet/UI/widgets/app_bar.dart';
import 'package:flutter_e_wallet/UI/widgets/card_item.dart';
import 'package:flutter_e_wallet/core/constants/app_colors.dart';
import 'package:flutter_e_wallet/core/constants/app_dimension.dart';
import 'package:flutter_e_wallet/core/helpers/asset_helper.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.bgPrimary,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).padding.top,
            ),
            MyAppBar(
              title: 'My cards',
              backgroundColor: AppColors.bgPrimary,
              textColor: Colors.white,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppDimension.contentPadding,
                  ),
                  child: Column(
                    children: [
                      CardItem(),
                      CardItem(),
                      CardItem(),
                      CardItem(),
                      CardItem(),
                      CardItem(),
                      CardItem(),
                      CardItem(),
                      CardItem(),
                      CardItem(),
                      CardItem(),
                      CardItem(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
