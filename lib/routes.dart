import 'package:dong_song/model/photos.dart';
import 'package:dong_song/screen/home/home_binding.dart';
import 'package:dong_song/screen/home/home_screen.dart';
import 'package:dong_song/screen/photo_detail/photo_detail_binding.dart';
import 'package:dong_song/screen/photo_detail/photo_detail_screen.dart';
import 'package:dong_song/screen/splash/splash_binding.dart';
import 'package:dong_song/screen/splash/splash_screen.dart';
import 'package:get/get.dart';

final routes = [
  GetPage(
    name: AppRoutes.splash,
    page: () => SplashScreen(),
    bindings: [
      SplashBinding(),
    ],
  ),
  GetPage(
    name: AppRoutes.home,
    page: () => const HomeScreen(),
    bindings: [
      HomeBinding(),
    ],
  ),
  GetPage(
    name: AppRoutes.productDetail,
    page: () => PhotoDetailScreen(
      product: Get.arguments,
    ),
    transition: Transition.fadeIn,
    bindings: [
      PhotoDetailBinding(),
    ],
  ),
];

class AppRoutes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String productDetail = '/productDetail';
}

class AppNavigators {
  static void goBack<T>({
    T? result,
    bool closeOverlays = false,
    bool canPop = true,
    int? id,
  }) {
    return Get.back<T>();
  }

  static Future<dynamic>? gotoHome() {
    return Get.offAllNamed(AppRoutes.home);
  }

  static Future<dynamic>? gotoProductDetail({required Product product}) {
    return Get.toNamed(AppRoutes.productDetail, arguments: product);
  }
}
