import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: Colors.blueAccent,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blueAccent,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 48,
      fontFamily: 'Lobster',
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 48,
    ),
    toolbarHeight: 160,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.blueAccent,
    selectedItemColor: Colors.white,
    selectedLabelStyle: TextStyle(
      fontFamily: 'Montserrat Alternates',
      color: Colors.white,
    ),
    unselectedItemColor: Colors.white38,
    unselectedLabelStyle: TextStyle(
      fontFamily: 'Montserrat Alternates',
      color: Colors.white38,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    textTheme: ButtonTextTheme.accent,
  ),
  inputDecorationTheme:  InputDecorationTheme(
    suffixIconColor: Colors.blueAccent,
    labelStyle: const TextStyle(
      fontFamily: 'Montserrat Alternates',
      color: Colors.blueAccent,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.blueAccent,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.blueAccent,
      ),
    ),
  ),
  filledButtonTheme: const FilledButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(TextStyle(
        color: Colors.white,
        fontFamily: 'Montserrat Alternates',
      )),
      foregroundColor: WidgetStatePropertyAll(Colors.blueAccent),
    ),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontFamily: 'Montserrat Alternates',
      color: Colors.blueAccent,
    ),
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.blueAccent,
    titleTextStyle: TextStyle(
      fontFamily: 'Montserrat Alternates',
      color: Colors.blueAccent,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.0),
    ),
    side: WidgetStateBorderSide.resolveWith(
      (states) => const BorderSide(
        color: Colors.blueAccent,
      ),
    ),
    fillColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.blueAccent; // Preenchimento quando selecionado
        }
        return Colors.white; // Fundo quando não selecionado
      },
    ),
    checkColor: WidgetStateProperty.all(Colors.white), // Cor do ícone de seleção (tick)
  ),
  expansionTileTheme: const ExpansionTileThemeData(
    textColor: Colors.blueAccent,
    collapsedTextColor: Colors.blueAccent,
    iconColor: Colors.blueAccent,
    collapsedIconColor: Colors.blueAccent,
  ),
  dividerColor: Colors.blueAccent,
);
