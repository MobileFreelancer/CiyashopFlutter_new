import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeController extends GetxController {
  var themeMode = ThemeMode.light.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    updateTheme(isLight: true);
  }

  getThemes() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorConstant.backgroundColor.withOpacity(0.0),
        systemNavigationBarColor: Colors.black, // navigation bar color, the one Im looking for
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorConstant.primaryColor,
      splashColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorConstant.backgroundColor,
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: ColorConstant.textTitle,
          size: 20,
        ),
        shadowColor: ColorConstant.primaryColor.withOpacity(0.1),
        toolbarHeight: 60,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontSize: titleH1,
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          fontSize: titleH2,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          fontSize: titleH3,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          fontSize: titleH4,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          fontSize: titleH5,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          fontSize: titleH6,
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          fontSize: textLarge,
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: textMedium,
        ),
        labelSmall: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: textSmall,
        ),
        bodyLarge: TextStyle(
          fontSize: textLarge,
        ),
        bodyMedium: TextStyle(
          fontSize: textMedium,
        ),
        bodySmall: TextStyle(
          fontSize: textSmall,
        ),
        displaySmall: TextStyle(
          fontSize: textLarge,
        ),
        displayMedium: TextStyle(
          fontSize: textMedium,
        ),
        displayLarge: TextStyle(
          fontSize: textSmall,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMain),
          ),
          backgroundColor: ColorConstant.primaryColor,
          foregroundColor: ColorConstant.textWhite,
          textStyle: GoogleFonts.workSans(
            textStyle: const TextStyle(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: textMedium,
            ),
          ),
          alignment: Alignment.center,
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
    );
  }

  updateTheme({required bool isLight}) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorConstant.backgroundColor.withOpacity(0.0),
        systemNavigationBarColor: Colors.black, // navigation bar color, the one Im looking for
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    themeMode.value = ThemeMode.light;
  }
}
