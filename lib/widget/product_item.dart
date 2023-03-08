import 'package:dong_song/model/photos.dart';
import 'package:dong_song/routes.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.item,
  });

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          AppNavigators.gotoProductDetail(product: item);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.cyan[200],
            height: 120,
            child: Row(
              children: [
                Hero(
                  tag: 'pro${item.id}',
                  child: Image.network(
                    '${item.images![0]}',
                    width: 100,
                    height: 100,
                  ),
                ),
                Expanded(child: Text('pro${item.id}- ${item.title}')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
