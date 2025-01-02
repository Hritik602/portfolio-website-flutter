import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                onTap: () => context.go('/home'),
                text: 'Home',
              ),
              NavigationTextButton(
                onTap: () => context.go('/projects'),
                text: 'Projects',
              ),
              NavigationTextButton(
                onTap: () => context.go('/experience'),
                text: 'Experience',
              ),
              NavigationTextButton(
                onTap: () => context.go('/about'),
                text: 'About me',
              ),
            ],
          ),
        );
      },
    );
  }
}
