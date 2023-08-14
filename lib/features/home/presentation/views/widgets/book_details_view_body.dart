import 'package:book_app/features/home/data/models/BookModel.dart';
import 'package:book_app/features/home/presentation/views/widgets/books_details_sections.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 2),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(child: SizedBox(height: 50)),
                const SimilarBooksSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
