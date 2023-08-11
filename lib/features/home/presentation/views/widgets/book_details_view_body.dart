import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/books_action.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
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
                const SizedBox(height: 37),
                const BooksAction(),
                const Expanded(child: SizedBox(height: 50)),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'You can also like',
                    style: darkTheme.textTheme.titleMedium!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 2),
    //   child: Column(
    //     children: [
    //       const CustomBookDetailsAppBar(),
    //       Padding(
    //         padding: EdgeInsets.symmetric(horizontal: width * 0.2),
    //         child: const CustomBookImage(),
    //       ),
    //       const SizedBox(height: 43),
    //       Text(
    //         'The Jungle Book',
    //         style: darkTheme.textTheme.titleMedium!.copyWith(
    //           fontSize: 30,
    //           letterSpacing: 1.2,
    //         ),
    //       ),
    //       const SizedBox(height: 6),
    //       Opacity(
    //         opacity: 0.7,
    //         child: Text(
    //           'Rudyard Kipling',
    //           style: darkTheme.textTheme.titleLarge!.copyWith(
    //               fontSize: 18,
    //               fontStyle: FontStyle.italic,
    //               fontWeight: FontWeight.w400,
    //               letterSpacing: 2.4),
    //         ),
    //       ),
    //       const SizedBox(height: 16),
    //       const BookRating(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //       ),
    //       const SizedBox(height: 37),
    //       const BooksAction(),
    //       const Expanded(child: SizedBox(height: 50)),
    //       Align(
    //         alignment: AlignmentDirectional.topStart,
    //         child: Text(
    //           'You can also like',
    //           style: darkTheme.textTheme.titleMedium!.copyWith(
    //             fontSize: 14,
    //             fontWeight: FontWeight.w600,
    //           ),
    //         ),
    //       ),
    //       const SizedBox(height: 16),
    //       const SimilarBooksListView(),
    //       //const SizedBox(height: 40),
    //     ],
    //   ),
    // );
  }
}
