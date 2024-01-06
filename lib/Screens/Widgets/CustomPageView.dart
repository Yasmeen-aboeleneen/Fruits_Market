// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce_app/Screens/Widgets/CustomPageViewItem.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    Key? key,
    this.pageController,
  }) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        CustomPageViewItem(
          image: 'Assets/Images/onboarding1.png',
          title: 'Shopping',
          subtitle: ' Explore top organic fruits',
        ),
        CustomPageViewItem(
          image: 'Assets/Images/onboarding2.png',
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
        ),
        CustomPageViewItem(
          image: 'Assets/Images/onboarding3.png',
          title: 'Delivery Arrived',
          subtitle: 'Order is arrived at your place',
        )
      ],
    );
  }
}
