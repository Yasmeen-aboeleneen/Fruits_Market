import 'package:e_commerce_app/Core/Utils/Size_Config.dart';
import 'package:flutter/material.dart';

class HorizintolSpace extends StatelessWidget {
  const HorizintolSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.DefaultSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.DefaultSize! * value!,
    );
  }
}
