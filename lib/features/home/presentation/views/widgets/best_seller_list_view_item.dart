import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AssetsData.testPhoto1),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text('Harry Potter and the Goblet of Fire',
                        style: darkTheme.textTheme.titleLarge,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'J.K.Rowling',
                    style: darkTheme.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.grey,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '19.99€',
                        style: darkTheme.textTheme.titleLarge!.copyWith(
                          fontFamily: kMontserrat,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
