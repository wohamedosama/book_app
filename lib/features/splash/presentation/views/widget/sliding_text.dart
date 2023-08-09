import 'package:book_app/core/utils/theme/dark_theme.dart';
import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            'Read Free Book',
            style: darkTheme.textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
