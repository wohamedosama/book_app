import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12), child: Text('search')
            //BookListViewItem(bookModel: BookModel()),
            );
      },
    );
  }
}
