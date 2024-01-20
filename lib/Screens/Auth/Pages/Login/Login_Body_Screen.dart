import 'package:e_commerce_app/Core/Constants/Constants.dart';
import 'package:e_commerce_app/Core/Utils/Size_Config.dart';
import 'package:e_commerce_app/Core/Widgets/Custom_Buttons.dart';
import 'package:e_commerce_app/Core/Widgets/SpaceWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(20),
        SizedBox(
          height: SizeConfig.DefaultSize! * 17,
          child: Image.asset(KLogo),
        ),
         const VerticalSpace(5),
         
        const Text.rich(TextSpan(
            style: TextStyle(
                fontSize: 50, color: KMainColor, fontWeight: FontWeight.w700),
            children: [
              TextSpan(
                text: 'Fruit Market',
              )
            ])),
     
     const VerticalSpace(7),
        const Row(
          children: [
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    text: 'Log in With',
                    iconData: FontAwesomeIcons.google,
                  ),
                )),
            Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonWithIcon(
                    text: 'Log in With',
                    iconData: FontAwesomeIcons.facebook,
                  ),
                ))
          ],
        ),
       const Expanded(child: SizedBox()),
      ],
    );
  }
}
