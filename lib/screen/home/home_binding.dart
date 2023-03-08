import 'package:dong_song/model/photos.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  RxList<Product> photos = <Product>[].obs;

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
