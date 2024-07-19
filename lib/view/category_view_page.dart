import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:ciyashopflutter/view/inner_category_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class CategoryViewPage extends StatelessWidget {
  const CategoryViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "All Category"),
      body: Stack(
        children: [
          appBarBackground(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 20),
                  decoration: cardViewBox(),
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 10 / 14,
                    ),
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {
                          Get.to(() => InnerCategoryScreen());
                        },
                        child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: cardViewBox(),
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(radiusMain),
                                  ),
                                  clipBehavior: Clip.hardEdge,
                                  child: Image.asset(Assets.imagesTestproduct, fit: BoxFit.cover),
                                ),
                              ),
                              const Gap(10),
                              Text(
                                "Smart Watch",
                                style: Theme.of(context).textTheme.titleSmall?.apply(color: ColorConstant.primaryColor, fontSizeDelta: -2),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  // child: ListView.separated(
                  //   padding: const EdgeInsets.symmetric(
                  //       horizontal: 20, vertical: 20),
                  //   shrinkWrap: true,
                  //   physics: const NeverScrollableScrollPhysics(),
                  //   itemCount: 5,
                  //   itemBuilder: (context, index) {
                  //     return AspectRatio(
                  //       aspectRatio: 16 / 9,
                  //       child: ListProductWidget(),
                  //     );
                  //   },
                  //   separatorBuilder: (context, index) =>
                  //   const SizedBox(height: 15),
                  // ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
