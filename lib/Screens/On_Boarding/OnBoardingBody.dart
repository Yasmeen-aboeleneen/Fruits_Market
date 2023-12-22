import 'package:e_commerce_app/Core/Utils/Size_Config.dart';
import 'package:e_commerce_app/Core/Widgets/Custom_Buttons.dart';
import 'package:e_commerce_app/Screens/Widgets/CustomPageView.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomPageView(),
        Positioned(
          top: SizeConfig.DefaultSize! * 10,
          right: 32,
          child: const Text(
            'Skip',
            style: TextStyle(fontSize: 14, color: Color(0xff898989)),
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
            bottom: SizeConfig.DefaultSize! * 10,
            left: SizeConfig.DefaultSize! * 10,
            right: SizeConfig.DefaultSize! * 10,
            child: const CustomGeneralButton(
              text: 'Next',
            ))
      ],
    );
  }
}
