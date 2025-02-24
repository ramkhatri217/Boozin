import 'package:boozin/app/services/health_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final steps = 0.obs;
  final Rx<double> calories = 0.0.obs;
  final HealthService healthService = HealthService();
  RxBool isServiceAvailable = false.obs;
  RxBool isServiceLoading = true.obs;
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  fetchData() {
    healthService.init().then((data) {
      if (data) {
        isServiceLoading.value = false;
        isServiceAvailable.value = true;
        getHelthData();
      } else {
        isServiceAvailable.value = false;
        isServiceLoading.value = false;
      }
    });
  }

  getHelthData() async {
    steps.value = await HealthService().getStepCount() ?? 0;
    var value = await HealthService().getCaloriesBurned() ?? 0;
    calories.value = value.toDouble();
  }
}
