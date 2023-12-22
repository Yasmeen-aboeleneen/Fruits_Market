import 'package:e_commerce_app/Core/Utils/Size_Config.dart';
import 'package:e_commerce_app/Core/Widgets/SpaceWidget.dart';
import 'package:flutter/material.dart';

class CustomPageViewItem extends StatelessWidget {
  const CustomPageViewItem({
    Key? key,
    this.title,
    this.subtitle,
    this.image,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(20),
        SizedBox(
            height: SizeConfig.DefaultSize! * 21, child: Image.asset(image!)),
        const VerticalSpace(5),
        Text(
          title!,
          style: const TextStyle(
              fontSize: 20,
              color: Color(0xff2f2e41),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(2.5),
        Text(
          subtitle!,
          style: const TextStyle(
              fontSize: 15,
              color: Color(0xff78787c),
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}
