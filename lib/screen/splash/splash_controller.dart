import 'package:dong_song/routes.dart';
import 'package:get/get.dart';

import 'splash_binding.dart';

class SplashController extends GetxController {
  final SplashBinding binding = SplashBinding();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2), () => AppNavigators.gotoHome());
  }
}
