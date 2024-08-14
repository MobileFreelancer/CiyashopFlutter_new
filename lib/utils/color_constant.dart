import 'package:ciyashopflutter/utils/hex_color.dart';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color primaryColor = HexColor.fromHex("#4C7CF0");
  static Color secondaryColor = HexColor.fromHex('#ffffff');
  static Color lightColor = HexColor.lighten(primaryColor, 90);
  static Color negativeColor = HexColor.fromHex("#EB5757");
  static Color whiteColor = Colors.white;
  static Color backgroundColor = Colors.white;
  static Color shadowColor = Colors.transparent;
  static Color dividerColor = HexColor.fromHex("#7A869A").withOpacity(0.2);
  static Color dividerColor2 = HexColor.fromHex("#E0E0E0");
  static Color toastColor = HexColor.fromHex("#7C8087");
  static Color orangeColor = HexColor.fromHex("#FE9855");

  //text Color
  static const Color textWhite = Colors.white;
  static const Color textTitle = Color.fromRGBO(2, 2, 46, 1);
  static const Color textBody = Color.fromRGBO(0, 0, 0, 0.5);
}
