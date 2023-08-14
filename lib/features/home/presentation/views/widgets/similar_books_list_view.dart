import 'package:book_app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomBookImage(
                    imageUrl: state
                            .books[index].volumeInfo!.imageLinks?.thumbnail ??
                        'https://books.google.com/books/content?id=yqp9AAAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.error.toString());
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
