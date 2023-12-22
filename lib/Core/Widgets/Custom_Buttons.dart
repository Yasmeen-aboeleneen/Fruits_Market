import 'package:flutter/material.dart';

import 'package:e_commerce_app/Core/Constants/Constants.dart';
import 'package:e_commerce_app/Core/Utils/Size_Config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.ScreenWidth,
      decoration: BoxDecoration(
        color: KMainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text!,
          style: const TextStyle(
            color: Color(0xffffffff),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
