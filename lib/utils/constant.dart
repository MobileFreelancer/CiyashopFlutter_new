//APP Configuration

import 'package:ciyashopflutter/model/home_model.dart' as home;
import 'package:ciyashopflutter/view/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

const duration = Duration(milliseconds: 500);
final displaySize = MediaQuery.of(navigatorKey.currentContext!).size;
final displayHeight = displaySize.height;
final displayWidth = displaySize.width;

// Profile Configuration Constants

class Constant {
  static bool IS_CURRENCY_SWITCHER_ACTIVE = true;
  static bool IS_WPML_ACTIVE = true;
  static List<dynamic>? languageList = home.HomeModel().wpmlLanguages;
  static List<dynamic>? webViewPages = home.HomeModel().pgsWooApiWebViewPages;
}