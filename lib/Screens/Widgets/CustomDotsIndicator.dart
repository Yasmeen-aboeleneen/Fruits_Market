import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_app/Core/Constants/Constants.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    Key? key,
    required this.dotsIndex,
  }) : super(key: key);
  final double? dotsIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: const DotsDecorator(
          color: Colors.transparent,
          activeColor: KMainColor,
          shape: RoundedRectangleBorder(side: BorderSide(color: KMainColor))),
      dotsCount: 3,
      position: dotsIndex!.toInt(),
    );
  }
}
