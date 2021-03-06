/*
  name: theme.dart
  author: EM-Connect
  dev: Ticvic
  description: App theme configuration
*/
import 'package:flutter/material.dart';

import './constants.dart';

Map<int, Color> color = {
  50: Color.fromRGBO(143, 140, 222, .1),
  100: Color.fromRGBO(143, 140, 222, .2),
  200: Color.fromRGBO(143, 140, 222, .3),
  300: Color.fromRGBO(143, 140, 222, .4),
  400: Color.fromRGBO(143, 140, 222, .5),
  500: Color.fromRGBO(143, 140, 222, .6),
  600: Color.fromRGBO(143, 140, 222, .7),
  700: Color.fromRGBO(143, 140, 222, .8),
  800: Color.fromRGBO(143, 140, 222, .9),
  900: Color.fromRGBO(143, 140, 222, 1),
};

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    primaryColor: kPrimaryColor,
    primarySwatch: MaterialColor(0xFF8F8CDE, color),
    accentColor: kPrimaryColor,
    fontFamily: 'Helvetica',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonColor: kSecondaryColor,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextBlack),
    bodyText2: TextStyle(color: kTextBlack),
    button: TextStyle(color: kTextBlack),
  );
}
