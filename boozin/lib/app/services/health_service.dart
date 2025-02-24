import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';

class HealthService {
  final Health _health = Health();
  List<HealthDataType> types = [
    HealthDataType.STEPS,
    HealthDataType.ACTIVE_ENERGY_BURNED,
    HealthDataType.TOTAL_CALORIES_BURNED
  ];

  Future<bool> init() async {
    _health.configure();
    _health.getHealthConnectSdkStatus();
    return await authorize();
  }

  Future<void> installHealthConnect() async => await _health.installHealthConnect();

  Future<bool> authorize() async {
    await Permission.activityRecognition.request();
    bool? hasPermissions = await _health.hasPermissions(types);

    hasPermissions = false;
    bool authorized = false;
    if (!hasPermissions) {
      try {
        authorized = await _health.requestAuthorization(types);
      } catch (error) {
        log("Exception in authorize: $error");
      }
    }
    return authorized;
  }

  Future<bool> requestPermissions() async {
    return await _health.requestAuthorization(types);
  }

  Future<int?> getStepCount() {
    final now = DateTime.now();
    final yesterday = now.subtract(Duration(hours: now.hour, minutes: now.minute, seconds: now.second));
    return _health.getTotalStepsInInterval(yesterday, now);
  }

  Future<num> getCaloriesBurned() async {
    final now = DateTime.now();
    final yesterday = now.subtract(Duration(hours: now.hour, minutes: now.minute, seconds: now.second));

    List<HealthDataPoint> data = await _health
        .getHealthDataFromTypes(types: [HealthDataType.TOTAL_CALORIES_BURNED], startTime: yesterday, endTime: now);
    var calories =
        data.fold(0.0, (sum, item) => sum + (NumericHealthValue.fromJson(item.value.toJson()).numericValue.toInt()));

    return calories;
  }
}
