import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:ciyashopflutter/view/add_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "My Address", isBack: true),
      body: Stack(
        children: [
          appBarBackground(),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 20),
                decoration: cardViewBox(),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: cardViewBox(),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                TextTitleMedium(
                                  text: "Billing Address",
                                  color: ColorConstant.textTitle,
                                ),
                                Gap(10),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ImageIcon(
                                      AssetImage(Assets.imagesLocation),
                                      size: 15,
                                    ),
                                    Gap(10),
                                    Expanded(
                                      child: TextBodySmall(
                                        text: "319, 3rd floor, Potenza Global Solutions,  Royal Platinum, Palanpur",
                                        color: ColorConstant.textBody,
                                        fontFamily: FontsConstants.workSans,
                                        maxLine: 3,
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(10),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ImageIcon(
                                      AssetImage(Assets.imagesPerson),
                                      size: 15,
                                    ),
                                    Gap(10),
                                    TextBodySmall(
                                      text: "Kaushal Parmar",
                                      color: ColorConstant.textBody,
                                      fontFamily: FontsConstants.workSans,
                                    ),
                                  ],
                                ),
                                Gap(10),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ImageIcon(
                                      AssetImage(Assets.imagesPhoneNormal),
                                      size: 15,
                                    ),
                                    Gap(10),
                                    TextBodySmall(
                                      text: "9918956321",
                                      color: ColorConstant.textBody,
                                      fontFamily: FontsConstants.workSans,
                                    ),
                                  ],
                                ),
                                Gap(10),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ImageIcon(
                                      AssetImage(Assets.imagesEmailNormal),
                                      size: 15,
                                    ),
                                    Gap(10),
                                    TextBodySmall(
                                      text: "test@gmail.com",
                                      color: ColorConstant.textBody,
                                      fontFamily: FontsConstants.workSans,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                            color: ColorConstant.primaryColor.withOpacity(0.05),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.to(() => const AddAddressScreen());
                                  },
                                  splashFactory: NoSplash.splashFactory,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      ImageIcon(
                                        AssetImage(Assets.imagesEditNormal),
                                        size: 15,
                                      ),
                                      Gap(10),
                                      TextBodySmall(
                                        text: "Edit",
                                        color: ColorConstant.textBody,
                                        fontFamily: FontsConstants.workSans,
                                      ),
                                    ],
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ImageIcon(
                                      AssetImage(Assets.imagesIcDelete),
                                      color: ColorConstant.textBody,
                                      size: 15,
                                    ),
                                    Gap(10),
                                    TextBodySmall(
                                      text: "Remove",
                                      color: ColorConstant.textBody,
                                      fontFamily: FontsConstants.workSans,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 15),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
