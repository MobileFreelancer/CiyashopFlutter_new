//APP Configuration

import 'package:ciyashopflutter/view/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

const duration = Duration(milliseconds: 500);
final displaySize = MediaQuery.of(navigatorKey.currentContext!).size;
final displayHeight = displaySize.height;
final displayWidth = displaySize.width;

// Configuration
String homeLayout = "";
bool isGuestCheckoutActive = false;
bool isLogin = false;
//bool isSlider = false;
bool isRtl = false;
String siteLanguage = "";
bool walletActive = false;
String isUserExists = "";
