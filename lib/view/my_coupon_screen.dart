import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyCouponScreen extends StatelessWidget {
  const MyCouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "My Coupons", isBack: true),
      body: Stack(
        children: [
          appBarBackground(),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.only(top: 100, right: 20, left: 20),
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: cardViewBox(),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      splashFactory: NoSplash.splashFactory,
                      onTap: () {
                        showCouponDialog();
                      },
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Stack(
                          children: [
                            Image.asset(Assets.imagesBgCouponsOrange),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorConstant.orangeColor,
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                  ),
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  height: 40,
                                  child: const TextTitleMedium(
                                    text: "Discount",
                                    color: Colors.white,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(14),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(6),
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(40),
                                        ),
                                        alignment: Alignment.center,
                                        child: const TextTitleMedium(
                                          text: "20%",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      const Gap(20),
                                      const Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          TextTitleLarge(
                                            text: "Scratch here",
                                            color: Colors.white,
                                            textAlign: TextAlign.start,
                                            maxLine: 2,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              TextTitleMedium(
                                                text: "View",
                                                color: Colors.black,
                                                textAlign: TextAlign.start,
                                              ),
                                              Gap(10),
                                              TextTitleMedium(
                                                text: "Redeeem",
                                                color: Colors.black,
                                                textAlign: TextAlign.start,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const Gap(10),
                  itemCount: 8,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
