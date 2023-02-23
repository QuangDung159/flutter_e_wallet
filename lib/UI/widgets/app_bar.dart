// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_e_wallet/core/constants/app_colors.dart';
import 'package:flutter_e_wallet/core/constants/app_dimension.dart';
import 'package:get/get.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({
    Key? key,
    this.action,
    required this.title,
    this.hasBackButton,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);

  final Widget? action;
  final String title;
  final bool? hasBackButton;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: AppDimension.contentPadding,
      ),
      width: MediaQuery.of(context).size.width,
      height: 50,
      color: widget.backgroundColor ?? AppColors.bgSecondary,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: widget.hasBackButton ?? false
                ? Container(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.chevron_left_outlined,
                        size: 32,
                        color: widget.textColor ?? AppColors.primaryBlue,
                      ),
                    ),
                  )
                : Container(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: widget.textColor ?? AppColors.textDefault,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: widget.action,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
