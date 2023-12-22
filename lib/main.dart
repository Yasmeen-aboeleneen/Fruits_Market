import 'package:e_commerce_app/Splash/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const FruitsApp());
}

class FruitsApp extends StatelessWidget {
  const FruitsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'IBMPlexSans-Bold'),
      debugShowCheckedModeBanner: false,
      title: 'Fruits Market',
      home: SplashScreen(),
    );
  }
}
