import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:book_app/features/home/data/models/BookModel.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.2),
        child: CustomBookImage(
          imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ??
              'https://books.google.com/books/content?id=yqp9AAAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
        ),
      ),
      const SizedBox(height: 43),
      Text(
        bookModel.volumeInfo!.title!,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        style: darkTheme.textTheme.titleMedium!.copyWith(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 6),
      Opacity(
        opacity: 0.7,
        child: Text(
          bookModel.volumeInfo!.authors!.first,
          style: darkTheme.textTheme.titleLarge!.copyWith(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w400,
              letterSpacing: 2.4),
        ),
      ),
      const SizedBox(height: 16),
      BookRating(
        mainAxisAlignment: MainAxisAlignment.center,
        rating: bookModel.volumeInfo!.averageRating ?? 0,
        counter: bookModel.volumeInfo!.ratingsCount ?? 0,
      ),
      const SizedBox(height: 37),
      BooksAction(
        bookModel: bookModel,
      ),
    ]);
  }
}
