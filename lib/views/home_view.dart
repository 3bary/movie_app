import 'package:flutter/material.dart';
import 'package:movie_app_ui/constants.dart';
import 'package:movie_app_ui/views/widgets/colored_wallpaper.dart';


class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            const ColoredWallpaper(),
          ],
        ),
      ),
    );
  }
}
