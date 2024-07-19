import 'package:ciyashopflutter/utils/constant.dart';
import 'package:ciyashopflutter/view/cart_view_page.dart';
import 'package:ciyashopflutter/view/category_view_page.dart';
import 'package:ciyashopflutter/view/home_view_page.dart';
import 'package:ciyashopflutter/view/profile_view_page.dart';
import 'package:ciyashopflutter/view/wishlist_view_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class MainController extends GetxController {
  final currentPage = 2.obs;


  final List<Widget> pages = [
    const CategoryViewPage(),
    const CartViewPage(),
    HomeViewPage(),
    const WishListViewPage(),
    ProfileViewPage()
  ];

  Widget getSelectedPage() {
    return pages[currentPage.value];
  }

  selectPage({required int pageNumber}) {
    if (currentPage.value != pageNumber) {
      currentPage.value = pageNumber;
    }
  }
}
