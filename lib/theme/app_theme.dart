import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: AppBarTheme(color: primary, elevation: 0),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 0),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo, shape: StadiumBorder(), elevation: 0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        //floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: AppBarTheme(color: primary, elevation: 0),
  );
}
