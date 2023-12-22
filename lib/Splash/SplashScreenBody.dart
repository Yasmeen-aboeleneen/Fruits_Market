import 'package:e_commerce_app/Core/Utils/Size_Config.dart';
import 'package:e_commerce_app/Screens/On_Boarding/OnBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextScreen();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Column(
        children: [
          const Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: const Text.rich(TextSpan(
                text: 'Fruits Market',
                style: TextStyle(
                    fontSize: 50, color: Color.fromARGB(255, 228, 228, 228)))),
          ),
          Image.asset('Assets/Images/splash_view_image.png'),
        ],
      ),
    );
  }

  void goToNextScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => OnBoardingScreen(), transition: Transition.fade);
    });
  }
}
