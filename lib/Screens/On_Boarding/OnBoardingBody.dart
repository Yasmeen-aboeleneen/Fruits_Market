import 'package:e_commerce_app/Core/Utils/Size_Config.dart';
import 'package:e_commerce_app/Core/Widgets/Custom_Buttons.dart';
import 'package:e_commerce_app/Screens/Auth/Pages/Login/Login_Screen.dart';
import 'package:e_commerce_app/Screens/Widgets/CustomDotsIndicator.dart';
import 'package:e_commerce_app/Screens/Widgets/CustomPageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
            bottom: SizeConfig.DefaultSize! * 19,
            left: 0,
            right: 0,
            child: CustomDotsIndicator(
              dotsIndex: pageController!.hasClients ? pageController?.page : 0,
            )),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.DefaultSize! * 10,
            right: 32,
            child: const Text(
              'Skip',
              style: TextStyle(fontSize: 14, color: Color(0xff898989)),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
            bottom: SizeConfig.DefaultSize! * 10,
            left: SizeConfig.DefaultSize! * 10,
            right: SizeConfig.DefaultSize! * 10,
            child: CustomGeneralButton(
                onTap: () {
                  if (pageController!.page! < 2) {
                    pageController?.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  } else {
                    Get.to(() => const LoginScreen(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500));
                  }
                },
                text: pageController!.hasClients
                    ? (pageController?.page == 2 ? 'Get Started' : 'Next')
                    : 'Next'))
      ],
    );
  }
}
