import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.counter,
  });

  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final num counter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDF4F),
          size: 22,
        ),
        const SizedBox(width: 6.3),
        Text(
          '$rating',
          style: darkTheme.textTheme.titleMedium!.copyWith(
            fontFamily: 'Gilroy-Bold',
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text(
            '$counter',
            style: darkTheme.textTheme.titleMedium!.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
