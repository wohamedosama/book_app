import 'package:book_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
