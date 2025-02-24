import 'package:boozin/app/conts/app_decoration.dart';
import 'package:boozin/app/conts/app_strings.dart';
import 'package:boozin/app/conts/img_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.hi, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        centerTitle: false,
      ),
      body: Obx(() => controller.isServiceLoading.value
          ? Center(
              child: CircularProgressIndicator(
              color: context.theme.primaryColor,
            ))
          : controller.isServiceAvailable.value
              ? Column(
                  children: [
                    goalCard(
                      context: context,
                      goal: 1500,
                      titleText: AppStrings.steps,
                      progressValue: controller.steps.value,
                      suffixImage: AppImage.iFootsteps,
                    ),
                    const SizedBox(height: 16),
                    goalCard(
                        goal: 2500,
                        titleText: AppStrings.calories,
                        progressValue: controller.calories.value.toInt(),
                        suffixImage: AppImage.iKcal,
                        context: context),
                  ],
                ).paddingAll(16.0)
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.fetchData();
                          },
                          icon: Icon(Icons.refresh)),
                      Text(AppStrings.serviceNotAvailable)
                    ],
                  ),
                )),
    );
  }

  Widget goalCard(
      {required String titleText,
      required int goal,
      required String suffixImage,
      required int progressValue,
      required BuildContext context}) {
    double progress = progressValue / goal;

    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor, borderRadius: BorderRadius.circular(AppDecoration.cardRadius)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$titleText: $progressValue",
                  style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor),
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                    value: progress,
                    borderRadius: BorderRadius.circular(AppDecoration.cardRadius),
                    backgroundColor: context.theme.dividerColor,
                    color: Get.theme.primaryColor,
                    minHeight: 12),
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("0",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    Text(
                      AppStrings.goal(goal.toString()),
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(width: 12),
          SvgPicture.asset(suffixImage, height: 40, width: 40, color: Theme.of(context).primaryColor),
        ],
      ),
    );
  }
}
