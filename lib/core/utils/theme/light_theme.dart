import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: kMontserrat,
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontFamily: kMontserrat,
      color: kPrimaryColor,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.2,
    ),
    titleLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  ),
);
