// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_e_wallet/UI/widgets/app_bar.dart';
import 'package:flutter_e_wallet/core/constants/app_colors.dart';
import 'package:flutter_e_wallet/core/constants/app_dimension.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).padding.top,
            ),
            MyAppBar(
              hasBackButton: true,
              title: 'My cart',
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(bottom: 12),
                      height: 120,
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimension.contentPadding,
                      ),
                      child: Text('asd'),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(bottom: 12),
                      height: 120,
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimension.contentPadding,
                      ),
                      child: Text('asd'),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(bottom: 12),
                      height: 120,
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimension.contentPadding,
                      ),
                      child: Text('asd'),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(bottom: 12),
                      height: 120,
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimension.contentPadding,
                      ),
                      child: Text('asd'),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(bottom: 12),
                      height: 120,
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimension.contentPadding,
                      ),
                      child: Text('asd'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: AppDimension.contentPadding,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('asd'),
                      Text('asd'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('asd'),
                      Text('asd'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                horizontal: AppDimension.contentPadding,
                vertical: AppDimension.contentPadding,
              ),
              child: Column(
                children: [
                  Container(
                    height: 20,
                    color: AppColors.primaryBlue,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
