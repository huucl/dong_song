import 'package:dong_song/model/photos.dart';
import 'package:dong_song/routes.dart';
import 'package:dong_song/screen/home/home_binding.dart';
import 'package:dong_song/widget/product_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMobileBody extends StatelessWidget {
  MyMobileBody({Key? key, required this.binding}) : super(key: key);

  HomeBinding binding;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.deepPurple[200],

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // youtube video
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: Colors.cyan[400],
                      child: Text('${Get.width}'),
                    ),
                  ),
                ),

                // comment section & recommended videos
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: binding.photos.length,
                  itemBuilder: (context, index) {
                    Product item = binding.photos[index];
                    return ProductItem(item: item);
                  },
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
