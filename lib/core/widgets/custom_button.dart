import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize = 20,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadiusDirectional? borderRadius;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadiusDirectional.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: darkTheme.textTheme.titleLarge!.copyWith(
            fontFamily: kMontserrat,
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: fontSize!,
          ),
        ),
      ),
    );
  }
}
