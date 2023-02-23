// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_e_wallet/core/constants/app_dimension.dart';
import 'package:get/get.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({
    Key? key,
    this.action,
    required this.title,
    this.hasBackButton,
  }) : super(key: key);

  final Widget? action;
  final String title;
  final bool? hasBackButton;

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
