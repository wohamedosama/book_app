import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:book_app/features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:book_app/features/search/presentation/view/widget/search_reasult_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomSearchTextField(),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            'Search Result',
            style: darkTheme.textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: 15),
        const Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}
