import 'package:dong_song/model/photos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'photo_detail_controller.dart';

class PhotoDetailScreen extends StatelessWidget {
  PhotoDetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<PhotoDetailController>();
    final binding = Get.find<PhotoDetailController>().binding;

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'pro${product.id}',
              child: Image.network(
                  product.images![0]),
            )
          ],
        ),
      ),
    );
  }
}
