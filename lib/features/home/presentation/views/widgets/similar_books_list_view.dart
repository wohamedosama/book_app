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
            child: CustomBookImage(
              imageUrl:
                  'https://img.freepik.com/free-vector/technology-devops-people-standing-around-work-sequence-icon-computer_82472-538.jpg?w=740&t=st=1692015887~exp=1692016487~hmac=e956ba7199e21b4b65c1e6e0c3edfab36697fdc820447e238ede46d64894f0f3',
            ),
          );
        },
      ),
    );
  }
}
