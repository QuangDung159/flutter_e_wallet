// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

setStatusBarColor(
  BuildContext context,
  Brightness statusBarBrightness,
) {
  bool isAndroid = Theme.of(context).platform == TargetPlatform.android;
  if (isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarBrightness: Brightness.dark,
    ));
  }

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: statusBarBrightness,
  ));
}
