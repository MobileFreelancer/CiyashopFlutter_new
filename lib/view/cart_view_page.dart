import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/product_widget.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../component/custom_text.dart';

class CartViewPage extends StatelessWidget {
  const CartViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "Shopping Bag"),
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
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const AspectRatio(
                            aspectRatio: 20 / 8,
                            child: ShoppingWidget(),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(height: 15),
                      ),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: cardViewBox(),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextTitleMedium(
                                  text: "Sub Total",
                                  color: ColorConstant.textBody,
                                ),
                                TextTitleMedium(
                                  text: r"$ 1650.00",
                                  color: ColorConstant.textTitle,
                                ),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextTitleMedium(
                                  text: "Shipping",
                                  color: ColorConstant.textBody,
                                ),
                                TextTitleMedium(
                                  text: r"$ 10.00",
                                  color: ColorConstant.textTitle,
                                ),
                              ],
                            ),
                            Divider(
                              color: ColorConstant.textBody.withOpacity(0.1),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextTitleMedium(
                                  text: "Total Amount",
                                  color: ColorConstant.textTitle,
                                ),
                                TextTitleMedium(
                                  text: r"$ 1660.00",
                                  color: ColorConstant.textTitle,
                                ),
                              ],
                            ),
                            const Gap(10),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("CONTINUE TO CHECKOUT"),
                            ),
                          ],
                        ),
                      ),
                      const Gap(20),
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
