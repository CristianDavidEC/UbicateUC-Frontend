import 'package:flutter/material.dart';

class Apptheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lighTheme = ThemeData.light().copyWith(
      //color primario
      primaryColor: Colors.indigo,
      //appbar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //textButton theme

      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

      //FloatingActionButton
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      //ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary, shape: const StadiumBorder(), elevation: 0)),
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
          )));
}
