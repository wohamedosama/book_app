import 'package:book_app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/features/home/presentation/manager/feature_books_cubit/feature_book_cubit.dart';
import 'package:book_app/features/home/presentation/manager/feature_books_cubit/feature_book_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeatureBookCubit, FeatureBookState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is FeatureBooksSuccessState) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookImage(
                      imageUrl: state
                          .books[index].volumeInfo!.imageLinks!.thumbnail!),
                );
              },
            ),
          );
        } else if (state is FeatureBooksFailureState) {
          return CustomErrorWidget(errorMessage: state.error);
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
