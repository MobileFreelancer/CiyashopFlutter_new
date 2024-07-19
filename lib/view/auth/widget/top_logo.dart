import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';

class TopLogo extends StatelessWidget {
  const TopLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: ColorConstant.primaryColor,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 60),
          child: ImageIcon(
            const AssetImage(Assets.imagesLogo),
            color: ColorConstant.whiteColor,
            size: 150,
          ),
        ),
      ),
    );
  }
}
