import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepOrange;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
         //Color primario
        primaryColor: Colors.deepOrange,
        //AppBar Theme
        appBarTheme: const AppBarTheme(
          color: Colors.deepOrange,
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.deepOrange,
        )
  );

}