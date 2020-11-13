import 'package:flutter/material.dart';

class MyTheme {
  MyTheme._();
  static const appBarColor = const Color(0xff201f1f);

  static final ThemeData myThemeData = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: appBarColor,
        centerTitle: true,
        elevation: 5.0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      colorScheme: ColorScheme.light(
        primary: Colors.white,
        onPrimary: Colors.white,
        primaryVariant: Colors.white38,
        secondary: Colors.red,
      ),
      cardTheme: CardTheme(
        color: Colors.teal,
      ),
      iconTheme: IconThemeData(
        color: Colors.white54,
      ),
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        subtitle: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
      ),
      buttonTheme: ButtonThemeData(
          buttonColor: Colors.redAccent, textTheme: ButtonTextTheme.primary));

}
