import 'package:book_app/core/widgets/custom_button.dart';
import 'package:book_app/features/home/data/models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(16),
                topStart: Radius.circular(16),
              ),
              text: 'Free',
            ),
          ),
          const SizedBox(width: 2),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri url = Uri.parse(bookModel.volumeInfo!.previewLink!);

                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(16),
                topEnd: Radius.circular(16),
              ),
              text: 'Free preview',
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
