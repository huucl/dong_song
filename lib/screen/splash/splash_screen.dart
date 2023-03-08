import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SplashController>();
    final binding = Get.find<SplashController>().binding;

    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.red.withOpacity(0.3),
      ),
    );
  }
}
