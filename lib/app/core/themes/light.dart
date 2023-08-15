import 'package:flutter/material.dart';

ThemeData light = ThemeData.light().copyWith(
  canvasColor: const Color(0xf3f3f3f3),
  cardColor: const Color(0xfff5f5f5),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff3f3f3f),
    elevation: 2,
    titleTextStyle: TextStyle(color: Color(0xfff3f3f3), fontSize: 24),
  ),
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.lightBlue,
  ),
);
