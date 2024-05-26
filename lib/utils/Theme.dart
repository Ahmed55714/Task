import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: 'BoldCairo',
      primarySwatch: Colors.blue,
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontFamily: 'BoldCairo',
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontFamily: 'BoldCairo',
          fontWeight: FontWeight.bold,
        ),
        headline3: TextStyle(
          fontFamily: 'BoldCairo',
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontFamily: 'BoldCairo',
          fontWeight: FontWeight.bold,
          fontSize: 23,

        ),
        headline5: TextStyle(
          fontFamily: 'BoldCairo',
          fontWeight: FontWeight.bold,
        ),
        headline6: TextStyle(
          fontFamily: 'BoldCairo',
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(
          fontFamily: 'BoldCairo',
        ),
        subtitle2: TextStyle(
          fontFamily: 'BoldCairo',
        ),
        bodyText1: TextStyle(
          fontFamily: 'BoldCairo',
        ),
        bodyText2: TextStyle(
          fontFamily: 'BoldCairo',
        ),
        button: TextStyle(
          fontFamily: 'BoldCairo',
        ),
        caption: TextStyle(
          fontFamily: 'BoldCairo',
        ),
        overline: TextStyle(
          fontFamily: 'BoldCairo',
        ),
      ),
    );
  }
}
