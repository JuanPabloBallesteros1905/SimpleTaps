import 'package:flutter/material.dart';

class Themes {
  static final ThemeData ligththeme = ThemeData.light().copyWith(

      //*AppBar Theme
      appBarTheme: const AppBarTheme(color: Color.fromRGBO(255, 107, 53, 100)),

      //*ElevatedButton Theme

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 10,
              shadowColor: const Color.fromARGB(255, 4, 49, 90),
              minimumSize: const Size(100, 40),
              backgroundColor: const Color.fromARGB(190, 0, 78, 137))));
}
