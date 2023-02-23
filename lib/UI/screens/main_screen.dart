// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_e_wallet/core/helpers/common_helper.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    setStatusBarColor(context, Brightness.dark);
    return Scaffold(
      body: Center(
        child: Text('asd'),
      ),
    );
  }
}
