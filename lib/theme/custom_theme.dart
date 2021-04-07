

import 'package:flutter/material.dart';

class CustomTheme {

  static ThemeData get darkTheme {
    return ThemeData(
      accentColor: Color(0xff448AFF),
      backgroundColor: Color(0xff1f2022),
      splashFactory: InkRipple.splashFactory,
      primaryTextTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.white
        ),
        bodyText2: TextStyle(
          color: Colors.grey[600]
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.white60
      )
    );
  }





}