import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.blueAccent,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blueAccent,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 48,
      fontFamily:'Lobster',
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 48,
    ),
    toolbarHeight: 160,
  ),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.accent
  ),
  inputDecorationTheme: const InputDecorationTheme(
    suffixIconColor: Colors.blueAccent,
    labelStyle: TextStyle(
      fontFamily: 'Montserrat Alternates',
      color: Colors.blueAccent,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blueAccent,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blueAccent,
      ),
    ),
  ),
  filledButtonTheme: const FilledButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(TextStyle(
        color: Colors.white,
        fontFamily: 'Montserrat Alternates'
      )),
      foregroundColor: WidgetStatePropertyAll(Colors.blueAccent),
    )
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontFamily: 'Montserrat Alternates',
      color: Colors.blueAccent
    )
  )
);