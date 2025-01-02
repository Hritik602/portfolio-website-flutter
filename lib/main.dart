import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/responsive_framework/src/responsive_framework_v2.dart';
import 'package:portfolio/view/main/main_view.dart';
import 'package:portfolio/view/splash_view.dart';

import 'const.dart';

void main() {
  ResponsiveConfig(
    xs: 480,
    sm: 768,
    md: 1024,
    lg: 1440,
    xl: 1920,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
            path: '/home',
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: MainView(
                selectedPage: 'Home',
              ));
            }),
        GoRoute(
            path: '/projects',
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: MainView(
                selectedPage: 'Projects',
              ));
            }),
        GoRoute(
            path: '/experience',
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: MainView(
                selectedPage: 'Experience',
              ));
            }),
        GoRoute(
            path: '/about',
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  child: MainView(
                selectedPage: 'About',
              ));
            }),
      ],
    );

    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: bgColor,
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
