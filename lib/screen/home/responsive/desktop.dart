import 'package:dong_song/model/photos.dart';
import 'package:dong_song/screen/home/home_binding.dart';
import 'package:dong_song/screen/home/responsive/mobile.dart';
import 'package:dong_song/widget/product_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDesktopBody extends StatelessWidget {
  MyDesktopBody({Key? key, required this.binding}) : super(key: key);

  HomeBinding binding;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // First column
              Expanded(
                child: Column(
                  children: [
                    // youtube video
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: Get.width,
                        color: Colors.green[400],
                        child: Text('${Get.width} ${MediaQuery.of(context).size.width} -${MediaQuery.of(context).size.height}}'),
                      ),
                    ),

                    // comment section & recommended videos
                    Expanded(
                      child: ListView.builder(
                        itemCount: binding.photos.length,
                        itemBuilder: (context, index) {
                          Product item = binding.photos[index];
                          return ProductItem(item: item);
                        },
                      ),
                    )
                  ],
                ),
              ),

              // second column
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: Get.width / 3,
                  color: Colors.cyan[200],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
