import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:flutter/material.dart';

import 'widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search Page',
          style: darkTheme.textTheme.titleMedium!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            wordSpacing: 2,
          ),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: const SearchViewBody(),
    );
  }
}
