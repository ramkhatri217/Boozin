import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(Duration(seconds: 4), () {
      Get.offAllNamed(Routes.HOME);
    });
  }
}
