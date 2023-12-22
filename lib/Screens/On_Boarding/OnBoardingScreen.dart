import 'package:e_commerce_app/Screens/On_Boarding/OnBoardingBody.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(child:  Scaffold(
      body: OnBoardingBody(),
    ));
  }
}
