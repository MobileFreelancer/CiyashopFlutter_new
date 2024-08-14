import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/section_widget.dart';
import 'package:ciyashopflutter/controller/product_details_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

class ProductDetailScreen extends StatelessWidget {
  ProductDetailScreen({super.key});

  final ProductDetailsController controller = Get.put(ProductDetailsController());

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Stack(
                              children: [
                                Obx(
                                      () => PageView.builder(
                                    controller: controller.pageController.value,
                                    itemCount: 3,
                                    onPageChanged: (value) => controller.onPageChange(index: value),
                                    itemBuilder: (context, index) {
                                      return controller.isVideo.value
                                          ? AspectRatio(
                                          aspectRatio: controller.videoPlayerController.value.aspectRatio,
                                          child: VideoPlayer(controller.videoPlayerController))
                                          : Image.asset(Assets.imagesTestProductBg, fit: BoxFit.cover);
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller.videoPlayerController.play();
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.only(right: 10, top: 20),
                                          padding: const EdgeInsets.all(6),
                                          height: 25,
                                          width: 25,
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
                                            Assets.imagesLike,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(right: 10, top: 20),
                                        padding: const EdgeInsets.all(6),
                                        height: 25,
                                        width: 25,
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
                                          Assets.imagesShare,
                                        ),
                                      ),
                                      const Gap(20),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                      height: 20,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: 3,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return PageIndicator(index: index);
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: cardViewBox(),
                      child: Column(
                        children: [
                          const TextTitleLarge(
                            text: "Fire-Boltt Phoenix Bluetooth Calling Smartwatch...",
                            color: Colors.black,
                            textAlign: TextAlign.start,
                            maxLine: 2,
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  TextTitleSmall(
                                    text: r"$49",
                                    color: ColorConstant.primaryColor,
                                  ),
                                  const Gap(5),
                                  Text(
                                    r"$49",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.getFont(
                                      FontsConstants.yantramanav,
                                      textStyle: Theme.of(context).textTheme.titleSmall?.apply(
                                        decoration: TextDecoration.lineThrough,
                                        decorationThicknessDelta: 0,
                                        decorationThicknessFactor: 1,
                                        color: ColorConstant.textBody,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              RatingBar(
                                initialRating: 3,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                ratingWidget: RatingWidget(
                                  full: const Icon(Icons.star_outlined, color: Colors.yellow),
                                  empty: const Icon(Icons.star_outline, color: Colors.grey),
                                  half: const Icon(Icons.star_half_outlined, color: Colors.yellow),
                                ),
                                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                onRatingUpdate: (rating) {},
                                ignoreGestures: true,
                                glow: false,
                                itemSize: 15,
                              ),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConstant.primaryColor,
                                  borderRadius: BorderRadius.circular(radiusMain),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                child: const TextBodySmall(
                                  text: "25% Off",
                                  color: Colors.white,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Row(
                                children: [
                                  const TextTitleSmall(
                                    text: "Availability: ",
                                    color: ColorConstant.textBody,
                                    textAlign: TextAlign.center,
                                  ),
                                  TextTitleSmall(
                                    text: "In Stock",
                                    color: ColorConstant.primaryColor,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: cardViewBox(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const TextTitleMedium(
                            text: "Color",
                            color: Colors.black,
                            textAlign: TextAlign.start,
                          ),
                          const Gap(10),
                          AspectRatio(
                            aspectRatio: 20 / 2,
                            child: ListView.separated(
                              shrinkWrap: true,
                              clipBehavior: Clip.hardEdge,
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  splashFactory: NoSplash.splashFactory,
                                  onTap: () {
                                    controller.selectedColorIndex.value = index;
                                  },
                                  child: Container(
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: ColorConstant.negativeColor,
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Obx(
                                          () => controller.selectedColorIndex.value == index
                                          ? const Padding(
                                        padding: EdgeInsets.all(2.0),
                                        child: Icon(
                                          Icons.done,
                                          color: Colors.white,
                                        ),
                                      )
                                          : const SizedBox(),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => const SizedBox(width: 10),
                              itemCount: 5,
                            ),
                          ),
                          const Gap(10),
                          const TextTitleMedium(
                            text: "Size",
                            color: Colors.black,
                            textAlign: TextAlign.start,
                          ),
                          const Gap(10),
                          AspectRatio(
                            aspectRatio: 20 / 2,
                            child: ListView.separated(
                              shrinkWrap: true,
                              clipBehavior: Clip.hardEdge,
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  splashFactory: NoSplash.splashFactory,
                                  onTap: () {
                                    controller.selectedSizeIndex.value = index;
                                  },
                                  child: Obx(
                                        () => Container(
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: controller.selectedSizeIndex.value == index ? Colors.black : ColorConstant.whiteColor,
                                        borderRadius: BorderRadius.circular(3),
                                        boxShadow: [
                                          BoxShadow(
                                            color: ColorConstant.primaryColor.withOpacity(0.1),
                                            spreadRadius: 4,
                                            blurRadius: 4,
                                            offset: const Offset(0, 0), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: TextBodySmall(
                                          text: controller.sizeList[index],
                                          color: controller.selectedSizeIndex.value == index ? ColorConstant.whiteColor : Colors.black,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => const SizedBox(width: 10),
                              itemCount: 5,
                            ),
                          ),
                          const Gap(20),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: cardViewBox(),
                      child: AspectRatio(
                        aspectRatio: 20 / 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const TextTitleMedium(
                              text: "Delivery Options",
                              color: Colors.black,
                              textAlign: TextAlign.start,
                            ),
                            const Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      boxShadow: myShadow(),
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                      ),
                                    ),
                                    child: TextFormField(
                                      autofocus: false,
                                      autocorrect: false,
                                      style: Theme.of(context).textTheme.labelSmall,
                                      decoration: InputDecoration(
                                        hintText: "Enter Your Pin Code",
                                        hintStyle: Theme.of(context).textTheme.bodySmall?.apply(color: ColorConstant.textBody),
                                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 19),
                                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                      ),
                                      keyboardType: TextInputType.number,
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor,
                                    borderRadius: const BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: const TextTitleMedium(
                                    text: "Check",
                                    color: Colors.white,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: cardViewBox(),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextTitleMedium(
                            text: "Info",
                            color: Colors.black,
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            children: [
                              TextTitleMedium(
                                text: "Weight: ",
                                color: ColorConstant.textBody,
                                textAlign: TextAlign.start,
                              ),
                              TextTitleMedium(
                                text: "5.2 kg",
                                color: ColorConstant.textTitle,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextTitleMedium(
                                text: "Dimensions: ",
                                color: ColorConstant.textBody,
                                textAlign: TextAlign.start,
                              ),
                              Gap(4),
                              Expanded(
                                child: TextTitleMedium(
                                  text: "4 x 1.4 x 1 cm",
                                  color: ColorConstant.textTitle,
                                  textAlign: TextAlign.start,
                                  maxLine: 2,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextTitleMedium(
                                text: "Color: ",
                                color: ColorConstant.textBody,
                                textAlign: TextAlign.start,
                              ),
                              Gap(4),
                              Expanded(
                                child: TextTitleMedium(
                                  text: "Blue, Gray, Green, Red, White, Pink",
                                  color: ColorConstant.textTitle,
                                  textAlign: TextAlign.start,
                                  maxLine: 2,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextTitleMedium(
                                text: "Size: ",
                                color: ColorConstant.textBody,
                                textAlign: TextAlign.start,
                              ),
                              Gap(4),
                              Expanded(
                                child: TextTitleMedium(
                                  text: "Large, Medium, Small, Extra Small",
                                  color: ColorConstant.textTitle,
                                  textAlign: TextAlign.start,
                                  maxLine: 2,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextTitleMedium(
                                text: "Material & Care: ",
                                color: ColorConstant.textBody,
                                textAlign: TextAlign.start,
                              ),
                              Gap(4),
                              Expanded(
                                child: TextTitleMedium(
                                  text: "80% Cotton and 20% Linen. Machine-Wash",
                                  color: ColorConstant.textTitle,
                                  textAlign: TextAlign.start,
                                  maxLine: 2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: cardViewBox(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const TextTitleMedium(
                            text: "Seller Information",
                            color: Colors.black,
                            textAlign: TextAlign.start,
                          ),
                          const Gap(10),
                          const Row(
                            children: [
                              TextTitleMedium(
                                text: "Sold By: ",
                                color: ColorConstant.textBody,
                                textAlign: TextAlign.start,
                              ),
                              TextTitleMedium(
                                text: "John Doe's Store",
                                color: ColorConstant.textTitle,
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                          const Gap(10),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: ColorConstant.primaryColor,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                                child: const Text(
                                  "Contact Seller",
                                  style: TextStyle(fontFamily: FontsConstants.workSans, fontSize: 12, color: Colors.white),
                                  maxLines: 1,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                                child: const Text(
                                  "View Store",
                                  style: TextStyle(fontFamily: FontsConstants.workSans, fontSize: 12, color: Colors.white),
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: cardViewBox(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const TextTitleMedium(
                            text: "Quick Overview",
                            color: Colors.black,
                            textAlign: TextAlign.start,
                          ),
                          const Gap(10),
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco",
                            style: TextStyle(
                              color: ColorConstant.textBody,
                              fontFamily: FontsConstants.workSans,
                              fontSize: textXSmall,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              TextTitleSmall(
                                text: "More",
                                color: ColorConstant.primaryColor,
                                textAlign: TextAlign.start,
                              ),
                              ImageIcon(
                                const AssetImage(
                                  Assets.imagesArrow,
                                ),
                                size: 15,
                                color: ColorConstant.primaryColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: cardViewBox(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const TextTitleMedium(
                            text: "Product Details",
                            color: Colors.black,
                            textAlign: TextAlign.start,
                          ),
                          const Gap(10),
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            style: TextStyle(
                              color: ColorConstant.textBody,
                              fontFamily: FontsConstants.workSans,
                              fontSize: textXSmall,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              TextTitleSmall(
                                text: "More",
                                color: ColorConstant.primaryColor,
                                textAlign: TextAlign.start,
                              ),
                              ImageIcon(
                                const AssetImage(
                                  Assets.imagesArrow,
                                ),
                                size: 15,
                                color: ColorConstant.primaryColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: cardViewBox(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const TextTitleMedium(
                            text: "Ratings & Reviews",
                            color: Colors.black,
                            textAlign: TextAlign.start,
                          ),
                          const Gap(20),
                          Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TextTitleLarge(
                                    text: "4.1/5",
                                    color: Colors.black,
                                    textAlign: TextAlign.start,
                                  ),
                                  const Gap(10),
                                  RatingBar(
                                    initialRating: 3,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    ratingWidget: RatingWidget(
                                      full: const Icon(Icons.star_outlined, color: Colors.yellow),
                                      empty: const Icon(Icons.star_outline, color: Colors.grey),
                                      half: const Icon(Icons.star_half_outlined, color: Colors.yellow),
                                    ),
                                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                    onRatingUpdate: (rating) {},
                                    ignoreGestures: true,
                                    glow: false,
                                    itemSize: 15,
                                  ),
                                  const Gap(10),
                                  const TextBodySmall(
                                    text: "25 Ratings",
                                    color: Colors.black,
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                              Container(
                                height: 80,
                                margin: const EdgeInsets.symmetric(horizontal: 20),
                                child: VerticalDivider(color: ColorConstant.dividerColor2),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IntrinsicWidth(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const TextTitleMedium(
                                          text: "5",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                        const Gap(10),
                                        SizedBox(
                                          width: 25.w,
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                        const Gap(10),
                                        const TextTitleMedium(
                                          text: "10",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const TextTitleMedium(
                                          text: "4",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                        const Gap(10),
                                        SizedBox(
                                          width: 25.w,
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                        const Gap(10),
                                        const TextTitleMedium(
                                          text: "10",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const TextTitleMedium(
                                          text: "3",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                        const Gap(10),
                                        SizedBox(
                                          width: 25.w,
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                        const Gap(10),
                                        const TextTitleMedium(
                                          text: "10",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const TextTitleMedium(
                                          text: "2",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                        const Gap(10),
                                        SizedBox(
                                          width: 25.w,
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                        const Gap(10),
                                        const TextTitleMedium(
                                          text: "10",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        const TextTitleMedium(
                                          text: "1",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                        const Gap(10),
                                        SizedBox(
                                          width: 25.w,
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            color: ColorConstant.negativeColor,
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                        const Gap(10),
                                        const TextTitleMedium(
                                          text: "10",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Gap(20),
                          ElevatedButton(
                            child: const Text("Rate and Write Review"),
                            onPressed: () {},
                          ),
                          const Gap(20),
                          ListView.separated(
                            itemCount: 3,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return AspectRatio(
                                aspectRatio: 20 / 6,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(5)),
                                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const TextTitleMedium(
                                                text: "5",
                                                color: Colors.white,
                                                textAlign: TextAlign.start,
                                              ),
                                              const Gap(5),
                                              Image.asset(
                                                Assets.imagesStarFill,
                                                height: 12,
                                                width: 12,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Gap(10),
                                        const TextTitleMedium(
                                          text: "Admin",
                                          color: Colors.black,
                                          textAlign: TextAlign.start,
                                        ),
                                      ],
                                    ),
                                    const Gap(3),
                                    const TextBodyMedium(
                                      text: "Lorem ipsum dolor sit amet, consectetur",
                                      color: ColorConstant.textBody,
                                      textAlign: TextAlign.start,
                                    ),
                                    const Gap(3),
                                    const TextBodyMedium(
                                      text: "6-Nov-2019",
                                      color: Colors.black,
                                      textAlign: TextAlign.start,
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => Divider(color: ColorConstant.dividerColor2),
                          ),
                          Divider(color: ColorConstant.dividerColor2),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextTitleMedium(
                                text: "View All Reviews",
                                color: Colors.black,
                                textAlign: TextAlign.start,
                              ),
                              ImageIcon(
                                AssetImage(
                                  Assets.imagesArrow,
                                ),
                                size: 15,
                                color: Colors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Gap(20),
                    const HorizontalScrollableGridProductSection(sectionName: "Featured Products"),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.rectangle,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Assets.imagesCart,
                                  height: 12,
                                  width: 12,
                                  color: Colors.white,
                                ),
                                const Gap(10),
                                const Text(
                                  "Add To Cart",
                                  style: TextStyle(fontFamily: FontsConstants.workSans, fontSize: 12, color: Colors.white),
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: ColorConstant.primaryColor,
                              shape: BoxShape.rectangle,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Assets.imagesCart,
                                  height: 12,
                                  width: 12,
                                  color: Colors.white,
                                ),
                                const Gap(10),
                                const Text(
                                  "Buy Now",
                                  style: TextStyle(fontFamily: FontsConstants.workSans, fontSize: 12, color: Colors.white),
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PageIndicator extends StatelessWidget {
  PageIndicator({super.key, required this.index});

  final ProductDetailsController controller = Get.find<ProductDetailsController>();
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => AnimatedContainer(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(5),
        width: 10,
        // width: ref.watch(introSliderVMProvider).currentPage == index ? 15 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: controller.currentPage.value == index ? ColorConstant.primaryColor : ColorConstant.primaryColor.withOpacity(0.3),
        ),
        duration: duration,
      ),
    );
  }
}
