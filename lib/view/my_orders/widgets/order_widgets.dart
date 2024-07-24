import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderWidgets extends StatelessWidget {
  const OrderWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: cardViewBox(),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(color: ColorConstant.primaryColor),
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      TextTitleSmall(
                        text: "Order Id:",
                        color: Colors.white,
                      ),
                      TextTitleSmall(
                        text: "38946",
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextTitleSmall(
                    text: "38946",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: 100,
                width: 100,
                child: Image.asset(
                  Assets.imagesTestproduct,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextTitleSmall(
                        text: "GoPro Camera",
                        color: Colors.black,
                        maxLine: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              const TextTitleSmall(
                                text: "Total Amount:",
                                color: ColorConstant.textBody,
                              ),
                              TextTitleSmall(
                                text: "50",
                                color: ColorConstant.primaryColor,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const TextTitleSmall(
                                text: "Quantity:",
                                color: ColorConstant.textBody,
                              ),
                              TextTitleSmall(
                                text: "1",
                                color: ColorConstant.primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(RoutesName.orderDetailScreen);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                          decoration: BoxDecoration(
                            color: ColorConstant.primaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const TextTitleSmall(
                            text: "Details",
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: TextTitleSmall(
                  text: "Order is under processing",
                  color: ColorConstant.textBody,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: TextTitleSmall(
                  text: "Processing",
                  color: ColorConstant.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
