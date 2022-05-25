import 'package:flutter/material.dart';

ThemeData tema() => ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Colors.green.shade600,
        onPrimary: Colors.white,
        secondary: Colors.green.shade400,
        onSecondary: Colors.white,
        error: Colors.red.shade400,
        onError: Colors.white,
        background: Colors.green.shade100,
        onBackground: Colors.white,
        surface: Colors.green.shade300,
        onSurface: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.green.shade700,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.green.shade400,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.green.shade800),
          textStyle: MaterialStateTextStyle.resolveWith(
              (states) => TextStyle(fontSize: 18.0)),
        ),
      ),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        headline1: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
