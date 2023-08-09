import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.star,
            color: Color(0xffFFDF4F),
          ),
        ),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: darkTheme.textTheme.titleMedium!.copyWith(
            fontFamily: 'Gilroy-Bold',
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 6),
        Text(
          '(254)',
          style: darkTheme.textTheme.titleMedium!.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w800,
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
