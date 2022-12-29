import 'package:flutter/material.dart';
import 'package:movie_app_ui/constants.dart';
import 'package:movie_app_ui/views/widgets/shadow_color.dart';

class HomeViewWallpaper extends StatelessWidget {
  const HomeViewWallpaper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
          top: screenHeight * 0.1,
          left: -60,
          child: const ShadowColor(
            height: 160,
            width: 160,
            color: Constants.kGreenColor,
          ),
        ),
        Positioned(
          top: screenHeight * 0.3,
          right: -40,
          child: const ShadowColor(
            height: 170,
            width: 170,
            color: Constants.kPinkColor,
          ),
        ),
        Positioned(
          top: screenHeight * 0.7,
          left: -60,
          child: const ShadowColor(
            height: 160,
            width: 160,
            color: Constants.kGreenColor,
          ),
        ),
      ],
    );
  }
}
