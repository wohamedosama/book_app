import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:book_app/core/utils/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      themeMode: ThemeMode.dark,
      darkTheme: darkTheme,
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}

// GoRouter configuration
