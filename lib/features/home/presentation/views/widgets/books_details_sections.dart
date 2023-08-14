import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.2),
        child: const CustomBookImage(
          imageUrl:
              'https://img.freepik.com/free-vector/mysterious-gangster-character_23-2148473800.jpg?w=740&t=st=1691974377~exp=1691974977~hmac=1e27a9153407337912b651b1d9311c8c42040b2553be68019258bbcf260e50d4',
        ),
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
      const SizedBox(height: 37),
      const BooksAction(),
    ]);
  }
}
