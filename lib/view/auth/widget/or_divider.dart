import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(
          endIndent: 1,
          thickness: 2,
          color: ColorConstant.dividerColor,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: TextBodyMedium(text: "Or".toUpperCase()),
        )
      ],
    );
  }
}
