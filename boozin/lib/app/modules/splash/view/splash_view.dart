import 'package:boozin/app/conts/app_strings.dart';
import 'package:boozin/app/conts/img_constants.dart';
import 'package:flutter/material.dart';
import "package:flutter_animate/flutter_animate.dart";
import 'package:get/get.dart';
import '../controllers/splash.controller.dart';


class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Theme.of(context).brightness == Brightness.light ? AppImage.nameLogoLight : AppImage.nameLogoDark,
              ).animate().fade(duration: getAnimationDuration).scale(duration: getAnimationDuration).then(),
              SizedBox(height: 10),
              Text(AppStrings.fitness)
                  .animate()
                  .fade(duration: getAnimationDuration, delay: getAnimationDuration)
                  .scale(duration: getAnimationDuration)
                  .then()
            ],
          ),
        ),
      ),
    );
  }

  Duration get getAnimationDuration => Duration(seconds: 1);
}
