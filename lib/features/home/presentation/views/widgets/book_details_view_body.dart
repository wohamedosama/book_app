import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_deatils_app_bar.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 2),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 43),
          Text(
            'The Jungle Book',
            style: darkTheme.textTheme.titleMedium!.copyWith(
              fontSize: 30,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: darkTheme.textTheme.titleLarge!.copyWith(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2.4),
            ),
          ),
          const SizedBox(height: 16),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
