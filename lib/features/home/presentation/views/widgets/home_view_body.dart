import 'package:book_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_app/features/home/presentation/views/widgets/feature_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeatureBookListView(),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Best Seller',
              style: ThemeData().textTheme.titleMedium!.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
