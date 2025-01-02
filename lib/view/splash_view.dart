import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../const.dart';
import '../responsive_framework/src/chore/responsive_scale.dart';
import '../responsive_framework/src/model/scale_in_between.model.dart';
import '../widget/animated_image_container.dart';
import '../widget/animated_loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      context.go("/home");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: ResponsiveScaleRoot(
          breakpoints: [
            ScaleInBetween(start: 0, end: 480, scale: 320),
            ScaleInBetween(start: 480, end: 768, scale: 480),
            ScaleInBetween(start: 768, end: 1440, scale: 768),
            ScaleInBetween(start: 1440, end: double.infinity, scale: 1024),
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedImageContainer(
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: defaultPadding,
              ),
              AnimatedLoadingText(),
            ],
          ),
        ),
      ),
    );
  }
}
