//APP Configuration

import 'package:ciyashopflutter/view/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();
// const APP_URL = "https://test-bh.potenzaglobalsolutions.com/cs-app/";
const APP_URL = "https://potenzaglobal.net/ciyashop-flutter/";
const WOO_MAIN_URL = "${APP_URL}wp-json/wc/v2/";
const MAIN_URL = "${APP_URL}wp-json/pgs-woo-api/v1/";

// const AP_USERNAME = "testbhcsapp";
// const AP_PASSWORD = "89NB oenb iW5U Rj41 kbDJ Wkag";
const AP_USERNAME = "superadmin";
const AP_PASSWORD = "3GFa 1QGi BiO5 no0q C0sy xfwI";
const version = "4.6.0";
const purchasekey = "1b30c152-e4f3-42fa-bf76-6c2ffcd3fa08";

const duration = Duration(milliseconds: 500);
final displaySize = MediaQuery.of(navigatorKey.currentContext!).size;
final displayHeight = displaySize.height;
final displayWidth = displaySize.width;

//homeLayout Configuration
String homeLayout = "";
bool isGuestCheckoutActive = false;
bool isLogin = false;
bool isSlider = false;
bool isRtl = false;
String siteLanguage = "";
bool walletActive = false;
String isUserExists = "";
