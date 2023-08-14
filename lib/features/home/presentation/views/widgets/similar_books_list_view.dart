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
                  'https://img.freepik.com/free-vector/mysterious-gangster-character_23-2148473800.jpg?w=740&t=st=1691974377~exp=1691974977~hmac=1e27a9153407337912b651b1d9311c8c42040b2553be68019258bbcf260e50d4',
            ),
          );
        },
      ),
    );
  }
}
