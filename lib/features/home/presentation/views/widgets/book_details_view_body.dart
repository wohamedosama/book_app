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
            padding: EdgeInsets.symmetric(horizontal: width * 0.17),
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
