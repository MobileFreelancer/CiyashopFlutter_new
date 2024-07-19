import 'package:ciyashopflutter/view/Intro_slider/intro_slider_screen.dart';
import 'package:ciyashopflutter/view/about_us_screen.dart';
import 'package:ciyashopflutter/view/auth/sign_in_screen.dart';
import 'package:ciyashopflutter/view/auth/sign_up_screen.dart';
import 'package:ciyashopflutter/view/contact_us_screen.dart';
import 'package:ciyashopflutter/view/main_screen.dart';
import 'package:ciyashopflutter/view/my_address_screen.dart';
import 'package:ciyashopflutter/view/my_coupon_screen.dart';
import 'package:ciyashopflutter/view/product/produt_list_screen.dart';
import 'package:ciyashopflutter/view/splash_screen.dart';
import 'package:get/get.dart';

// class Routers {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case splashScreen:
//         return MaterialPageRoute(
//           builder: (context) {
//             return const SplashScreen();
//           },
//         );
//       case introSliderScreen:
//         return MaterialPageRoute(
//           builder: (context) {
//             return IntroSliderScreen();
//           },
//         );
//       case signInScreen:
//         return MaterialPageRoute(
//           builder: (context) {
//             return SignInScreen();
//           },
//         );
//       case signUpScreen:
//         return MaterialPageRoute(
//           builder: (context) {
//             return SignUpScreen();
//           },
//         );
//       case mainScreen:
//         return MaterialPageRoute(
//           builder: (context) {
//             return MainScreen();
//           },
//         );
//       case productListScreen:
//         return MaterialPageRoute(
//           builder: (context) {
//             return ProductListScreen();
//           },
//         );
//       default:
//         return MaterialPageRoute(
//           builder: (_) => Scaffold(
//             body: Center(child: Text('No route defined for ${settings.name}')),
//           ),
//         );
//     }
//   }
// }

class AuthMiddleware extends GetMiddleware {
  // @override
  // RouteSettings? redirect(String? route) {
  //   return Get.find<UserDetailsConstants>().userId.value.isNotEmpty ? null : const RouteSettings(name: '/auth/login');
  // }
}

getPageRoute() {
  return [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: RoutesName.introSliderScreen,
      page: () => IntroSliderScreen(),
    ),
    GetPage(
      name: RoutesName.signInScreen,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: RoutesName.signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: RoutesName.mainScreen,
      page: () => MainScreen(),
    ),
    GetPage(
      name: RoutesName.productListScreen,
      page: () => ProductListScreen(),
    ),
    GetPage(
      name: RoutesName.myAddressScreen,
      page: () => MyAddressScreen(),
    ),
    GetPage(
      name: RoutesName.contactUsScreen,
      page: () => ContactUsScreen(),
    ),
    GetPage(
      name: RoutesName.aboutUsScreen,
      page: () => AboutUsScreen(),
    ),
    GetPage(
      name: RoutesName.myCouponScreen,
      page: () => MyCouponScreen(),
    )
  ];
}

class RoutesName {
  static const String splashScreen = '/';
  static const String introSliderScreen = '/IntroSliderScreen';
  static const String signInScreen = '/SignInScreen';
  static const String signUpScreen = '/SignUpScreen';
  static const String mainScreen = '/MainScreen';
  static const String productListScreen = '/ProductListScreen';
  static const String myAddressScreen = '/MyAddressScreen';
  static const String contactUsScreen = '/ContactUsScreen';
  static const String aboutUsScreen = '/ContactUsScreen';
  static const String myCouponScreen = '/MyCouponScreen';
}
