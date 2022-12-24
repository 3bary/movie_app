import 'dart:ui';

import 'package:flutter/material.dart';


class ShadowColor extends StatelessWidget {
  const ShadowColor({Key? key, required this.height, required this.width, required this.color}) : super(key: key);
  final double height;
  final double width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color, shape: BoxShape.circle),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
        child: SizedBox(
          width: width,
          height: height,
        ),
      ),
    );
  }
}
