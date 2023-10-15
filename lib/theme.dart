import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    textTheme: TextTheme(
      headlineLarge: TextStyle(color: Colors.black, fontSize: 24),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.white,
    ),
    iconTheme: IconThemeData(color: Colors.black),
  );
}