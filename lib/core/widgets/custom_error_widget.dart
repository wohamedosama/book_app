import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: darkTheme.textTheme.titleMedium,
    );
  }
}
