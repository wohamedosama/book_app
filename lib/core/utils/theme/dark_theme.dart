import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: kPrimaryColor,
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      height: 1.2,
    ),
    titleLarge: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.normal,
      fontFamily: kGtSectraFine,
    ),
    titleSmall: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
    ),
  ),
);
