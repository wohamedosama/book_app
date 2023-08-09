import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: kPrimaryColor,
  fontFamily: 'Montserrat',
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.2,
    ),
  ),
);
