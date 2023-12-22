import 'package:e_commerce_app/Core/Constants/Constants.dart';
import 'package:e_commerce_app/Splash/SplashScreenBody.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(backgroundColor: KMainColor, body: SplashScreenBody()),
    );
  }
}
