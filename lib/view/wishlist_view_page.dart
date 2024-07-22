import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/product_widget.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class WishListViewPage extends StatelessWidget {
  const WishListViewPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "Wishlist"),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Gap(10),
                      Row(
                        children: [
                          const Gap(20),
                          Image.asset(
                            Assets.imagesCart,
                            height: 20,
                            width: 20,
                            color: ColorConstant.primaryColor,
                          ),
                          const Gap(10),
                          const TextTitleLarge(
                            text: "5 Items in your cart",
                            color: Colors.black,
                          ),
                        ],
                      ),
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const AspectRatio(
                            aspectRatio: 20 / 8,
                            child: WishListProductWidget(),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(height: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
