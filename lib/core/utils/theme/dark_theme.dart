import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontFamily: 'Montserrat',
      color: kPrimaryColor,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.2,
    ),
  ),
);
