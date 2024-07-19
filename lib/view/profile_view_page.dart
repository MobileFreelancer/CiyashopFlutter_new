import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/controller/profile_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/order_detail_screen.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:ciyashopflutter/utils/utils.dart';
import 'package:ciyashopflutter/view/about_us_screen.dart';
import 'package:ciyashopflutter/view/contact_us_screen.dart';
import 'package:ciyashopflutter/view/filter_product_screen.dart';
import 'package:ciyashopflutter/view/my_coupon_screen.dart';
import 'package:ciyashopflutter/view/order_deliver_success_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ProfileViewPage extends StatelessWidget {
  ProfileViewPage({super.key});

  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "Account"),
      body: Stack(
        children: [
          appBarBackground(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 30),
                  padding: const EdgeInsets.all(20),
                  decoration: cardViewBox(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.primaryColor.withOpacity(0.1),
                                      spreadRadius: 4,
                                      blurRadius: 4,
                                      offset: const Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: Image.asset(Assets.imagesTestProductBg, fit: BoxFit.cover),
                              ),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.primaryColor.withOpacity(0.1),
                                      spreadRadius: 4,
                                      blurRadius: 4,
                                      offset: const Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                clipBehavior: Clip.hardEdge,
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.asset(Assets.imagesEdit, fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          ),
                          const Gap(20),
                          const Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextBodyLarge(
                                text: "Melissa smith",
                                color: ColorConstant.textTitle,
                              ),
                              Gap(10),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: ImageIcon(
                                      AssetImage(Assets.imagesEmail),
                                      color: ColorConstant.textBody,
                                      size: 16,
                                    ),
                                  ),
                                  TextBodySmall(
                                    text: "admin@gmail.com",
                                    color: ColorConstant.textBody,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      const Gap(20),
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.primaryColor.withOpacity(0.1),
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: const Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage(Assets.imagesWallet),
                                    color: ColorConstant.textTitle,
                                    size: titleH3,
                                  ),
                                  SizedBox(width: 10),
                                  TextBodyMedium(
                                    text: "wallet",
                                    color: ColorConstant.textTitle,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  const TextBodyMedium(
                                    text: "Available",
                                    color: ColorConstant.textTitle,
                                    textAlign: TextAlign.end,
                                  ),
                                  TextBodyMedium(
                                    text: r" $900",
                                    color: ColorConstant.primaryColor,
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(20),
                      Container(
                        decoration: cardViewBox(),
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return InkWell(
                              splashFactory: NoSplash.splashFactory,
                              onTap: () {
                                switch (controller.profileList[index].name) {
                                  case "Login":
                                    Get.offNamed(RoutesName.signInScreen);
                                    break;

                                  case "My Address":
                                    Get.to(RoutesName.myAddressScreen);
                                    break;

                                  case "Contact Us":
                                    Get.to(RoutesName.contactUsScreen);
                                    break;

                                  case "About Us":
                                    Get.to(RoutesName.aboutUsScreen);
                                    break;

                                  case "My Coupons":
                                    Get.to(RoutesName.myCouponScreen);
                                    break;

                                  case "Choose Currency":
                                    showCurrencyDialog();
                                    break;

                                  case "My Points":
                                    Get.to(() => OrderDeliverSuccessScreen());
                                    break;

                                  case "My Orders":
                                    Get.to(() => OrderDetailScreen());
                                    break;

                                  case "Account Setting":
                                    Get.to(() => FilterProductScreen());
                                    break;
                                }
                              },
                              child: SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Gap(20),
                                        ImageIcon(
                                          AssetImage(controller.profileList[index].logo.toString()),
                                          size: 20,
                                        ),
                                        const Gap(20),
                                        TextBodyMedium(text: controller.profileList[index].name.toString()),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      child: controller.profileList[index] == "Notification"
                                          ? Obx(
                                              () => SizedBox(
                                                width: 50,
                                                height: 40,
                                                child: FittedBox(
                                                  fit: BoxFit.fill,
                                                  child: Switch(
                                                    value: controller.isNotificationEnabled.value,
                                                    activeColor: ColorConstant.primaryColor,
                                                    onChanged: (bool value) {
                                                      controller.isNotificationEnabled.value = value;
                                                    },
                                                  ),
                                                ),
                                              ),
                                            )
                                          : const ImageIcon(
                                              AssetImage(Assets.imagesArrow),
                                              size: 15,
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => Divider(color: ColorConstant.textBody.withOpacity(0.1)),
                          itemCount: controller.profileList.length,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
