
import 'package:flutter/material.dart';
import 'package:movie_app_ui/constants.dart';

class CircleDot extends StatelessWidget {
  const CircleDot({
    Key? key, required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      margin: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index == 0
            ? Constants.kGreenColor
            : Constants.kWhiteColor.withOpacity(0.2),
      ),
    );
  }
}