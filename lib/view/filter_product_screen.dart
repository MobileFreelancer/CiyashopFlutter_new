import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/controller/filter_product_controller.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class FilterProductScreen extends StatelessWidget {
  FilterProductScreen({super.key});

  FilterProductController controller = Get.put(FilterProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBackAndEndIcon(title: "Filter", isBack: true),
      backgroundColor: ColorConstant.lightColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              clipBehavior: Clip.hardEdge,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              margin: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 20),
              decoration: cardViewBox(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TextTitleMedium(
                    text: "Price Range",
                    color: ColorConstant.textTitle,
                  ),
                  const Gap(10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextTitleMedium(
                        text: r"$50",
                        color: ColorConstant.textTitle,
                      ),
                      TextTitleMedium(
                        text: r"$1000",
                        color: ColorConstant.textTitle,
                      ),
                    ],
                  ),
                  RangeSlider(
                    min: 0.0,
                    max: 1500.0,
                    activeColor: ColorConstant.primaryColor,
                    inactiveColor: ColorConstant.dividerColor2,
                    values: controller.rangeSliderValue,
                    onChanged: (RangeValues values) {
                      print(values);
                      controller.rangeSliderValue = values;
                    },
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
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: cardViewBox(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
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
                    text: "Rating",
                    color: Colors.black,
                    textAlign: TextAlign.start,
                  ),
                  const Gap(10),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.is5Star.value,
                          onChanged: (value) {
                            controller.is5Star.value = value!;
                          },
                        ),
                      ),
                      RatingBar(
                        initialRating: 5,
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
                        itemSize: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.is4Star.value,
                          onChanged: (value) {
                            controller.is4Star.value = value!;
                          },
                        ),
                      ),
                      RatingBar(
                        initialRating: 4,
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
                        itemSize: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.is3Star.value,
                          onChanged: (value) {
                            controller.is3Star.value = value!;
                          },
                        ),
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
                        itemSize: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.is2Star.value,
                          onChanged: (value) {
                            controller.is2Star.value = value!;
                          },
                        ),
                      ),
                      RatingBar(
                        initialRating: 2,
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
                        itemSize: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: controller.is1Star.value,
                          onChanged: (value) {
                            controller.is1Star.value = value!;
                          },
                        ),
                      ),
                      RatingBar(
                        initialRating: 1,
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
                        itemSize: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: cardViewBox(),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextTitleMedium(
                        text: "Category",
                        color: Colors.black,
                        textAlign: TextAlign.start,
                      ),
                      TextTitleSmall(
                        text: "Select All",
                        color: ColorConstant.textBody,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const Gap(10),
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          const TextTitleSmall(
                            text: "Men",
                            color: ColorConstant.textBody,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(height: 0),
                    itemCount: 6,
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
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextTitleMedium(
                        text: "Brand",
                        color: Colors.black,
                        textAlign: TextAlign.start,
                      ),
                      TextTitleSmall(
                        text: "Select All",
                        color: ColorConstant.textBody,
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  const Gap(10),
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          const TextTitleSmall(
                            text: "Bida",
                            color: ColorConstant.textBody,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(height: 0),
                    itemCount: 6,
                  ),
                ],
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                child: const Text("Clear Filter"),
                onPressed: () {},
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
