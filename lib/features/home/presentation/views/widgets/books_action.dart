import 'package:book_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(16),
                topStart: Radius.circular(16),
              ),
              text: '19.99€',
            ),
          ),
          SizedBox(width: 2),
          Expanded(
            child: CustomButton(
              backgroundColor: Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
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
