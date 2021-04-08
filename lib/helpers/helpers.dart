import 'package:flutter/services.dart' as services;
import 'package:flutter/material.dart';

void changeStatusBarLight() {
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.light);
}

void changeStatusBarDark() {
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.dark);
}


void changeStatusbarTransparent() {
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    // statusBarBrightness: Brightness.light,
    // statusBarIconBrightness: Brightness.dark
  ));
}