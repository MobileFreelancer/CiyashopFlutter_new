import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/side_navigation_widget.dart';
import 'package:ciyashopflutter/controller/product_list_controller.dart';
import 'package:ciyashopflutter/view/product/widget/filter_option.dart';
import 'package:ciyashopflutter/view/product/widget/product_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  final ProductListController controller = Get.put(ProductListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: customAppBarWidgetWithDrawer(drawerKey: drawerKey),
      drawer: SidebarNavigationDrawer(drawerKey: drawerKey),
      body: Stack(
        children: [
          appBarBackground(height: 200),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
            decoration: cardViewBox(),
            child: Column(
              children: [FilterOption(), const Expanded(child: ProductGridView())],
            ),
          ),
        ],
      ),
    );
  }
}




