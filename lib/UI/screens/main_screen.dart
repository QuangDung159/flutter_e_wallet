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
                    children: renderListCard(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> renderListCard() {
    List<Widget> listRender = [];

    for (var i = 0; i < 8; i++) {
      listRender.add(
        CardItem(),
      );
    }

    listRender.add(renderButtonAddCard());

    return listRender;
  }

  Widget renderButtonAddCard() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimension.contentPadding,
      ),
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + AppDimension.contentPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primaryBlue,
      ),
      height: 80,
      child: Row(
        children: [
          SizedBox(
            width: 24,
          ),
          Image.asset(
            AssetHelper.iconCardUnfill,
            width: 40,
            height: 40,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'ADD NEW WALLET',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
