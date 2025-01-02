import 'package:flutter/material.dart';
import 'package:portfolio/responsive_framework/src/extension/context_extension.dart';

import '../const.dart';

class AnimatedLoadingText extends StatelessWidget {
  const AnimatedLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.responsive(
        xs: defaultPadding * 3, // Smaller screens
        sm: defaultPadding * 4, // Medium screens
        md: defaultPadding * 5, // Larger screens
        lg: defaultPadding * 6, // Even larger screens
      ),
      child: TweenAnimationBuilder(
        duration: const Duration(seconds: 2),
        builder: (context, value, child) => Column(
          children: [
            LinearProgressIndicator(
              backgroundColor: Colors.black,
              color: Colors.deepPurpleAccent,
              value: value,
            ),
            const SizedBox(height: defaultPadding / 2),
            Text(
              '${(value * 100).toInt()}%',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      color: Colors.pink, blurRadius: 10, offset: Offset(2, 2)),
                  Shadow(
                      color: Colors.blue,
                      blurRadius: 10,
                      offset: Offset(-2, -2)),
                ],
              ),
            ),
          ],
        ),
        tween: Tween(begin: 0.0, end: 1.0),
      ),
    );
  }
}
