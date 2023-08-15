import 'package:flutter/material.dart';

ThemeData dark = ThemeData.dark().copyWith(
  canvasColor: const Color(0xff3f3f3f),
  cardColor: const Color(0xff5f5f5f),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff4f4f4f),
    elevation: 2,
    titleTextStyle: TextStyle(color: Color(0xfff3f3f3), fontSize: 24),
  ),
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
  ),
);
