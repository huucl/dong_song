import 'package:dong_song/model/photos.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'home_binding.dart';

class HomeController extends GetxController {
  final HomeBinding binding = HomeBinding();

  final dio = Dio();

  @override
  void onReady() {
    super.onReady();
    getPhotos();
  }

  void getPhotos() async {
    final response = await dio.get('https://dummyjson.com/products',);
    binding.photos.value = GetProductResponse.fromMap(response.data).products!;
  }
}
