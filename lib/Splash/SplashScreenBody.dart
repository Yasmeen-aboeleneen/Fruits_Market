import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Spacer(),
          const Text.rich(TextSpan(
              text: 'Fruits Market',
              style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'IBMPlexSans-Bold',
                  color: Color.fromARGB(255, 228, 228, 228)))),
          Image.asset('Assets/Images/splash_view_image.png'),
        ],
      ),
    );
  }
}
