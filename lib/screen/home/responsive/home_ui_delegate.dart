import 'package:dong_song/responsive/dimensioins.dart';
import 'package:flutter/material.dart';

class HomeUiDelegate extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  HomeUiDelegate({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
