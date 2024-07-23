import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "Order Detail", isBack: true),
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const TextBodySmall(
                              text: "Order Id: #1466252",
                              color: ColorConstant.textBody,
                              textAlign: TextAlign.start,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(color: ColorConstant.negativeColor, borderRadius: BorderRadius.circular(10)),
                              child: const TextBodyMedium(
                                text: "Cancelled",
                                color: Colors.white,
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                        const Gap(5),
                        const TextBodySmall(
                          text: "Placed on 28-Feb-2023 at 10:01 PM",
                          color: ColorConstant.textBody,
                          textAlign: TextAlign.start,
                        ),
                        const Gap(20),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          decoration: cardViewBox(),
                          child: const Column(
                            children: [
                              TextTitleSmall(
                                text: "Women Long Sleeve Red Top With Black Plazzo",
                                color: ColorConstant.textTitle,
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                children: [
                                  TextTitleSmall(
                                    text: "Quantity: ",
                                    color: ColorConstant.textBody,
                                    textAlign: TextAlign.start,
                                  ),
                                  TextTitleSmall(
                                    text: "2",
                                    color: ColorConstant.textTitle,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Gap(20),
                              TextTitleSmall(
                                text: "Women Long Sleeve Red Top With Black Plazzo",
                                color: ColorConstant.textTitle,
                                textAlign: TextAlign.start,
                              ),
                              Row(
                                children: [
                                  TextTitleSmall(
                                    text: "Quantity: ",
                                    color: ColorConstant.textBody,
                                    textAlign: TextAlign.start,
                                  ),
                                  TextTitleSmall(
                                    text: "2",
                                    color: ColorConstant.textTitle,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Gap(20),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          decoration: cardViewBox(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  TextBodySmall(
                                    text: "Payment Method: ",
                                    color: ColorConstant.textBody,
                                    textAlign: TextAlign.start,
                                  ),
                                  TextTitleSmall(
                                    text: "Cash on delivery",
                                    color: ColorConstant.textTitle,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              const Gap(5),
                              const TextTitleSmall(
                                text: "Payment Details",
                                color: ColorConstant.textTitle,
                                textAlign: TextAlign.start,
                              ),
                              const Gap(5),
                              Divider(color: ColorConstant.dividerColor2, thickness: 1),
                              const Gap(5),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextBodySmall(
                                    text: "Sub Total",
                                    color: ColorConstant.textBody,
                                    textAlign: TextAlign.start,
                                  ),
                                  TextTitleSmall(
                                    text: r"$ 997.00",
                                    color: ColorConstant.textTitle,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              const Gap(5),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextBodySmall(
                                    text: "Shipping",
                                    color: ColorConstant.textBody,
                                    textAlign: TextAlign.start,
                                  ),
                                  TextTitleSmall(
                                    text: r"$ 3.00",
                                    color: ColorConstant.textTitle,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              const Gap(5),
                              Divider(color: ColorConstant.dividerColor2, thickness: 1),
                              const Gap(5),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TextBodySmall(
                                    text: "Total Amount",
                                    color: ColorConstant.textBody,
                                    textAlign: TextAlign.start,
                                  ),
                                  TextTitleSmall(
                                    text: r"$ 1000.00",
                                    color: ColorConstant.textTitle,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: cardViewBox(),
                          child: const Padding(
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
                        ),
                        const Gap(20),
                        Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: cardViewBox(),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                TextTitleMedium(
                                  text: "Shipping Address",
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
                        ),
                        const Gap(20),
                        ElevatedButton(
                          child: const Text("CANCEL ORDER"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
    ;
  }
}
