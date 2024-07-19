import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:flutter/material.dart';

Widget appBarBackground({double? height}) {
  return Image.asset(
    color: ColorConstant.primaryColor,
    Assets.imagesBackgroundStyle,
    height: height,
    width: double.infinity,
    fit: BoxFit.fill,
  );
}

Widget mainTitle() {
  return Image.asset(
    color: ColorConstant.whiteColor,
    Assets.imagesLogo,
    fit: BoxFit.fill,
  );
}

Widget mainDivider({double indent = 0.0}) {
  return Divider(
    color: ColorConstant.dividerColor2,
    thickness: 2,
    indent: indent,
    endIndent: indent,
  );
}

Widget verticalDivider({double indent = 0.0}) {
  return VerticalDivider(
    color: ColorConstant.dividerColor2,
    thickness: 2,
    indent: indent,
    endIndent: indent,
  );
}


cardViewBox({isBorder = false}) => BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(radiusMain),
      border: isBorder ? Border.all(width: 1, color: ColorConstant.primaryColor) : null,
      boxShadow: [
        BoxShadow(
          color: ColorConstant.primaryColor.withOpacity(0.1),
          spreadRadius: 4,
          blurRadius: 4,
          offset: const Offset(0, 0), // changes position of shadow
        ),
      ],
    );

myShadow() => [
      BoxShadow(
        color: ColorConstant.primaryColor.withOpacity(0.1),
        spreadRadius: 4,
        blurRadius: 4,
        offset: const Offset(0, 2), // changes position of shadow
      ),
    ];




