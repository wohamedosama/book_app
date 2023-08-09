import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:book_app/core/utils/theme/light_theme.dart';
import 'package:book_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: darkTheme,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
