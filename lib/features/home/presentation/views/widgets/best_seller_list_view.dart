import 'package:book_app/core/widgets/custom_circular_progress_indicator.dart';
import 'package:book_app/core/widgets/custom_error_widget.dart';
import 'package:book_app/features/home/presentation/manager/newest_books_cubit/newest_book_cubit.dart';
import 'package:book_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBookCubit, NewestBookState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is NewestBookSuccessState) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 3.0, horizontal: 12),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBookFailureState) {
          return CustomErrorWidget(errorMessage: state.error);
        } else {
          return const CustomCircularProgressIndicator();
        }
      },
    );
  }
}
