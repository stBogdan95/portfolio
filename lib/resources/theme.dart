import 'package:flutter/material.dart';

class AppTheme {
  final BuildContext context;

  const AppTheme(this.context);

  ThemeData get theme => Theme.of(context).brightness != Brightness.dark
      ? _lightTheme
      : _darkTheme;

  ThemeData get _lightTheme => ThemeData(
        primaryColor: const Color(0xFFec5b53),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFFFFFF),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Color(0xFF212529),
          ),
        ),
      );

  ThemeData get _darkTheme => ThemeData(
        primaryColor: const Color(0xFFec5b53),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF333333),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Color(0xFF212529),
          ),
        ),
      );
}
