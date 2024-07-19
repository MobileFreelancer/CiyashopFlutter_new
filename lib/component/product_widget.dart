import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:ciyashopflutter/view/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GridProductWidget extends StatelessWidget {
  const GridProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => ProductDetailScreen());
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: cardViewBox(),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorConstant.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(radiusMain),
                    ),
                    margin: const EdgeInsets.all(10),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(Assets.imagesTestproduct, fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextTitleSmall(
                        text: "GoPro Camera",
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          TextTitleSmall(
                            text: r"$49",
                            color: ColorConstant.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
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
                      const SizedBox(
                        height: 2,
                      ),
                      const TextTitleSmall(
                        text: "2.5 ⭐",
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(color: ColorConstant.primaryColor, borderRadius: BorderRadius.circular(5)),
                child: TextTitleSmall(
                  text: "25% Off",
                  color: ColorConstant.whiteColor,
                  size: -3,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: const EdgeInsets.all(15),
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
                  Assets.imagesHeart,
                  color: ColorConstant.textBody.withOpacity(0.5),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 80,
                    width: 40,
                    decoration: BoxDecoration(color: ColorConstant.whiteColor),
                    child: Column(
                      children: [
                        Expanded(
                          child: InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(1),
                              color: ColorConstant.whiteColor,
                              child: const TextTitleSmall(
                                text: "-",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(1),
                              color: ColorConstant.whiteColor,
                              child: const TextTitleSmall(
                                text: "1",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(1),
                              color: ColorConstant.whiteColor,
                              child: const TextTitleSmall(
                                text: "+",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(
                        Assets.imagesCart,
                        width: 15,
                        height: 15,
                        color: ColorConstant.whiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListProductWidget extends StatelessWidget {
  const ListProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: cardViewBox(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(radiusMain),
              ),
              margin: const EdgeInsets.all(10),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Image.asset(Assets.imagesTestproduct, fit: BoxFit.cover),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.all(5),
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
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextTitleSmall(
                    text: "GoPro Camera",
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      TextTitleSmall(
                        text: r"$49",
                        color: ColorConstant.primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
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
                  SizedBox(
                    child: RatingBar(
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
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    margin: const EdgeInsets.symmetric(vertical: 2),
                    decoration: BoxDecoration(color: ColorConstant.negativeColor, borderRadius: BorderRadius.circular(5)),
                    child: TextTitleSmall(
                      text: "Out of stock",
                      color: ColorConstant.whiteColor,
                      size: -3,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (true)
                Container(
                  height: 80,
                  width: 20,
                  decoration: BoxDecoration(color: ColorConstant.whiteColor),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(color: ColorConstant.textBody.withOpacity(0.1)),
                    child: Column(
                      children: [
                        Expanded(
                          child: InkWell(
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(1),
                              color: ColorConstant.whiteColor,
                              child: const TextTitleSmall(
                                text: "-",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(1),
                              color: ColorConstant.whiteColor,
                              child: const TextTitleSmall(
                                text: "1",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.all(1),
                              color: ColorConstant.whiteColor,
                              child: const TextTitleSmall(
                                text: "+",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: ColorConstant.primaryColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Image.asset(
                    Assets.imagesCart,
                    width: 15,
                    height: 15,
                    color: ColorConstant.whiteColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}

class FilterOptionItems extends StatelessWidget {
  const FilterOptionItems({super.key, required this.icon, required this.title, required this.color, required this.onclick});

  final String icon;
  final String title;
  final Color color;
  final void Function() onclick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Row(
        children: [
          ImageIcon(
            AssetImage(
              icon,
            ),
            color: color,
            size: 10,
          ),
          const SizedBox(
            width: 5,
          ),
          TextTitleSmall(
            text: title,
            color: color,
          ),
        ],
      ),
    );
  }
}

class WishListProductWidget extends StatelessWidget {
  const WishListProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: cardViewBox(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(radiusMain),
              ),
              margin: const EdgeInsets.all(10),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Image.asset(Assets.imagesTestproduct, fit: BoxFit.cover),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.all(5),
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
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextTitleSmall(
                    text: "GoPro Camera",
                    color: Colors.black,
                  ),
                  Row(
                    children: [
                      TextTitleSmall(
                        text: r"$49",
                        color: ColorConstant.primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
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
                  const Row(
                    children: [
                      TextTitleSmall(
                        text: "Size:L",
                        color: ColorConstant.textBody,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextTitleSmall(
                        text: "Color:Red",
                        color: ColorConstant.textBody,
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
                  const Divider(thickness: 1),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          Assets.imagesIcDelete,
                          height: 12,
                          width: 12,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Remove",
                          style: TextStyle(
                            color: ColorConstant.negativeColor,
                            fontSize: 10,
                            fontFamily: FontsConstants.workSans,
                          ),
                        ),
                        const VerticalDivider(
                          thickness: 1,
                        ),
                        Image.asset(
                          Assets.imagesCart,
                          height: 12,
                          width: 12,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Move to bag",
                          style: TextStyle(
                            color: ColorConstant.textTitle,
                            fontSize: 10,
                            fontFamily: FontsConstants.workSans,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShoppingWidget extends StatelessWidget {
  const ShoppingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: cardViewBox(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AspectRatio(
            aspectRatio: 1 / 1,
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(radiusMain),
              ),
              margin: const EdgeInsets.all(10),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Image.asset(Assets.imagesTestproduct, fit: BoxFit.cover),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.all(5),
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
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextTitleSmall(
                        text: r"$49",
                        color: ColorConstant.primaryColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
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
                  const Row(
                    children: [
                      TextTitleSmall(
                        text: "Size:L",
                        color: ColorConstant.textBody,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      TextTitleSmall(
                        text: "Color:Red",
                        color: ColorConstant.textBody,
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
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                        width: 60,
                        decoration: BoxDecoration(color: ColorConstant.whiteColor),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: ColorConstant.whiteColor,
                                    border: Border.all(color: ColorConstant.textBody.withOpacity(0.2)),
                                  ),
                                  alignment: Alignment.center,
                                  child: const TextTitleSmall(
                                    text: "-",
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: ColorConstant.whiteColor,
                                    border: Border(
                                      top: BorderSide(color: ColorConstant.textBody.withOpacity(0.2)),
                                      bottom: BorderSide(color: ColorConstant.textBody.withOpacity(0.2)),
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: const TextTitleSmall(
                                    text: "1",
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: ColorConstant.whiteColor,
                                    border: Border.all(color: ColorConstant.textBody.withOpacity(0.2)),
                                  ),
                                  alignment: Alignment.center,
                                  child: const TextTitleSmall(
                                    text: "+",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            Assets.imagesIcDelete,
                            height: 12,
                            width: 12,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Delete",
                            style: TextStyle(
                              color: ColorConstant.negativeColor,
                              fontSize: 10,
                              fontFamily: FontsConstants.workSans,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
