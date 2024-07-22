import 'dart:async';

import 'package:ciyashopflutter/controller/global_controller.dart';
import 'package:ciyashopflutter/controller/theme_controller.dart';
import 'package:ciyashopflutter/firebase_options.dart';
import 'package:ciyashopflutter/utils/Localization.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setTheme();
  setOptimalDisplayMode();
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final ThemeController themeController = Get.put(ThemeController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) => GetMaterialApp(
          title: 'Ciyashop v3',
          debugShowCheckedModeBanner: false,
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          initialBinding: GlobalController(),
          translations: Localization(),
          theme: themeController.getThemes(),
          themeMode: themeController.themeMode.value,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          getPages: getPageRoute(),
          initialRoute: RoutesName.splashScreen,
          transitionDuration: const Duration(milliseconds: 500),
          defaultTransition: Transition.native,
          color: ColorConstant.primaryColor,
        ),
      ),
    );
  }
}

setOptimalDisplayMode() async {
  try {
    final List<DisplayMode> supported = await FlutterDisplayMode.supported;
    final DisplayMode active = await FlutterDisplayMode.active;

    final List<DisplayMode> sameResolution = supported
        .where((DisplayMode m) => m.width == active.width && m.height == active.height)
        .toList()
      ..sort((DisplayMode a, DisplayMode b) => b.refreshRate.compareTo(a.refreshRate));

    final DisplayMode mostOptimalMode = sameResolution.isNotEmpty ? sameResolution.first : active;
    await FlutterDisplayMode.setPreferredMode(mostOptimalMode);
  } catch (e) {
    print(e);
  }
}

setTheme() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
