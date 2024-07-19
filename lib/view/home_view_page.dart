import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/category_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/section_widget.dart';
import 'package:ciyashopflutter/component/side_navigation_widget.dart';
import 'package:ciyashopflutter/controller/home_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class HomeViewPage extends StatelessWidget {
  HomeViewPage({super.key});

  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: customAppBarWidgetWithDrawer(drawerKey: drawerKey),
      drawer: SidebarNavigationDrawer(
        drawerKey: drawerKey,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 00),
        child: RefreshIndicator(
          color: ColorConstant.primaryColor,
          edgeOffset: 5,
          displacement: 5,
          backgroundColor: ColorConstant.backgroundColor,
          onRefresh: () async {
            await Future.delayed(const Duration(seconds: 2));
          },
          child: SingleChildScrollView(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                //Top Banner
                Stack(
                  children: [
                    appBarBackground(height: 200),
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: PageView.builder(
                        itemCount: 3,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(20),
                            clipBehavior: Clip.hardEdge,
                            decoration: cardViewBox(),
                            child: Image.asset(Assets.imagesTestImage, fit: BoxFit.cover),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const HorizontalCategory(),
                const HorizontalScrollableGridProductSection(sectionName: "Featured Products"),
                const HorizontalCategoryWithBackground(),
                const GridProductSection(sectionName: "Popular Products"),
                const SpecialDeals(sectionName: "Special Deals"),
                const HorizontalScrollableGridProductSection(sectionName: "Top Related Products"),
                const ListProductSection(sectionName: "Recent Products"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      decoration: BoxDecoration(color: ColorConstant.primaryColor),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                  color: ColorConstant.primaryColor.withOpacity(0.1),
                                  spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Image.asset(
                              Assets.imagesPhoneCall,
                            ),
                          ),
                          const Gap(20),
                          TextTitleMedium(
                            text: "Got Questions?",
                            color: ColorConstant.whiteColor,
                          ),
                          const Gap(5),
                          TextTitleMedium(
                            text: r"Call us (10:00 AM TO 7:30 PM)",
                            color: ColorConstant.whiteColor,
                          ),
                          const Gap(5),
                          TextTitleLarge(
                            text: "(+91) 1234567890",
                            color: ColorConstant.whiteColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                WhyChooseUsSection(
                  sectionName: "Why Choose Us",
                ),
                const HorizontalListProductSection(
                  sectionName: "Recently Viewed Products",
                  showViewAll: false,
                ),
                StoreAppInfo(sectionName: "Store App Info"),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
