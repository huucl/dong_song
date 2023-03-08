import 'package:dong_song/screen/home/responsive/home_ui_delegate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';
import 'responsive/desktop.dart';
import 'responsive/mobile.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    final binding = Get.find<HomeController>().binding;

    return Material(
      child: Scaffold(
        body: HomeUiDelegate(
          mobileBody: MyMobileBody(binding: binding),
          desktopBody: MyDesktopBody(
            binding: binding,
          ),
        ),
      ),
    );
  }
}
