import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/product_widget.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/routers.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../generated/assets.dart';

class HorizontalScrollableGridProductSection extends StatelessWidget {
  const HorizontalScrollableGridProductSection({
    super.key,
    this.sectionName = "",
  });

  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTitleLarge(
                text: sectionName,
                color: Colors.black,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(RoutesName.productListScreen);
                },
                child: const TextTitleSmall(
                  text: "View All",
                  color: ColorConstant.textBody,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 280,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            separatorBuilder: (context, index) => const SizedBox(width: 15),
            itemBuilder: (context, index) {
              return const AspectRatio(
                aspectRatio: 11 / 16,
                child: GridProductWidget(),
              );
            },
          ),
        ),
      ],
    );
  }
}

class GridProductSection extends StatelessWidget {
  const GridProductSection({
    super.key,
    this.sectionName = "",
  });

  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTitleLarge(
                text: sectionName,
                color: Colors.black,
              ),
              const TextTitleLarge(
                text: "View All",
                color: ColorConstant.textBody,
              )
            ],
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 11 / 16, crossAxisSpacing: 15, mainAxisSpacing: 15),
          itemCount: 4,
          itemBuilder: (context, index) {
            return const GridProductWidget();
          },
        ),
      ],
    );
  }
}

class ListProductSection extends StatelessWidget {
  const ListProductSection({
    super.key,
    this.sectionName = "",
  });

  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTitleLarge(
                text: sectionName,
                color: Colors.black,
              ),
              const TextTitleSmall(
                text: "View All",
                color: ColorConstant.textBody,
              )
            ],
          ),
        ),
        ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return const AspectRatio(
              aspectRatio: 20 / 8,
              child: ListProductWidget(),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 15),
        )
      ],
    );
  }
}

class HorizontalListProductSection extends StatelessWidget {
  const HorizontalListProductSection({super.key, this.sectionName = "", this.showViewAll = true});

  final String sectionName;
  final bool showViewAll;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTitleLarge(
                text: sectionName,
                color: Colors.black,
              ),
              if (showViewAll)
                const TextTitleSmall(
                  text: "View All",
                  color: ColorConstant.textBody,
                )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 160,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 6 / 15,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return const ListProductWidget();
            },
          ),
        )
      ],
    );
  }
}

class SpecialDeals extends StatelessWidget {
  const SpecialDeals({
    super.key,
    this.sectionName = "",
  });

  final String sectionName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextTitleLarge(
              text: sectionName,
              color: Colors.black,
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 16 / 10,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                  color: ColorConstant.primaryColor.withOpacity(0.1),
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: const Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          maxLines: 2,
                          softWrap: true,
                          text: TextSpan(
                            style: GoogleFonts.getFont(
                              FontsConstants.yantramanav,
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .titleLarge
                                  ?.apply(color: Colors.black, fontWeightDelta: 0, fontSizeDelta: 5),
                            ),
                            children: [
                              const TextSpan(text: "End Of Season"),
                              const TextSpan(text: " "),
                              TextSpan(
                                text: "Sale",
                                style: GoogleFonts.getFont(
                                  FontsConstants.yantramanav,
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.apply(color: ColorConstant.primaryColor, fontWeightDelta: 0, fontSizeDelta: 5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: AspectRatio(
                                aspectRatio: 10 / 12,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.primaryColor.withOpacity(0.1),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: TextTitleMedium(
                                    text: "0",
                                    color: ColorConstant.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: AspectRatio(
                                aspectRatio: 10 / 12,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.primaryColor.withOpacity(0.1),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: TextTitleMedium(
                                    text: "2",
                                    color: ColorConstant.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                            const TextTitleLarge(
                              text: " : ",
                              color: Colors.black,
                              size: 5,
                            ),
                            Flexible(
                              child: AspectRatio(
                                aspectRatio: 10 / 12,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.primaryColor.withOpacity(0.1),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: const TextTitleMedium(
                                    text: "2",
                                    color: ColorConstant.textWhite,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: AspectRatio(
                                aspectRatio: 10 / 12,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.primaryColor.withOpacity(0.1),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: const TextTitleMedium(
                                    text: "2",
                                    color: ColorConstant.textWhite,
                                  ),
                                ),
                              ),
                            ),
                            const TextTitleLarge(
                              text: " : ",
                              color: Colors.black,
                              size: 5,
                            ),
                            Flexible(
                              child: AspectRatio(
                                aspectRatio: 10 / 12,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.primaryColor.withOpacity(0.1),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: const TextTitleMedium(
                                    text: "4",
                                    color: ColorConstant.textWhite,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: AspectRatio(
                                aspectRatio: 10 / 12,
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      BoxShadow(
                                        color: ColorConstant.primaryColor.withOpacity(0.1),
                                        spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: const Offset(0, 0), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: TextTitleMedium(
                                    text: "6",
                                    color: ColorConstant.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextTitleMedium(
                              text: "HRS",
                              color: Colors.black,
                            ),
                            TextTitleMedium(text: " "),
                            TextTitleMedium(text: " "),
                            TextTitleMedium(
                              text: "MIN",
                              color: Colors.black,
                            ),
                            TextTitleMedium(text: " "),
                            TextTitleMedium(text: " "),
                            TextTitleMedium(
                              text: "SEC",
                              color: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Flexible(
                    flex: 4,
                    child: Image.asset(Assets.imagesEndOfSale),
                  )
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Align(
            alignment: Alignment.centerRight,
            child: TextTitleSmall(
              text: "View All",
              color: ColorConstant.textBody,
            ),
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 300,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 6 / 15, crossAxisSpacing: 15, mainAxisSpacing: 15),
            itemCount: 8,
            itemBuilder: (context, index) {
              return const ListProductWidget();
            },
          ),
        )
      ],
    );
  }
}

class WhyChooseUsSection extends StatelessWidget {
  WhyChooseUsSection({
    super.key,
    this.sectionName = "",
  });

  final String sectionName;
  final data = [
    {
      "name": "Free Delivery",
      "icon": Assets.imagesFree,
      "discription": "From Rs 100",
    },
    {
      "name": "99% Positive",
      "icon": Assets.imagesPositive,
      "discription": "Secure System",
    },
    {
      "name": "30 Days",
      "icon": Assets.imagesReturn,
      "discription": "For free return",
    },
    {
      "name": "Payment",
      "icon": Assets.imagesPaymentCard,
      "discription": "Secure System",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTitleLarge(
                text: sectionName,
                color: Colors.black,
              ),
            ],
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 10 / 11,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              clipBehavior: Clip.hardEdge,
              decoration: cardViewBox(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: ImageIcon(
                      AssetImage(
                        data[index]['icon'] ?? "",
                      ),
                      size: 50,
                      color: ColorConstant.primaryColor,
                    ),
                  ),
                  TextTitleLarge(
                    text: data[index]['name'] ?? "",
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextTitleLarge(
                    text: data[index]['discription'] ?? "",
                    color: ColorConstant.textBody,
                    weight: -1,
                    size: -1,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class StoreAppInfo extends StatelessWidget {
  StoreAppInfo({
    super.key,
    this.sectionName = "",
  });

  final String sectionName;
  final data = [
    {
      "name": "Shoping info",
      "icon": Assets.imagesCart2,
    },
    {
      "name": "Return Policy",
      "icon": Assets.imagesContract,
    },
    {
      "name": "Cash on Delivery",
      "icon": Assets.imagesCashInfo,
    },
    {
      "name": "How to Order",
      "icon": Assets.imagesOrderInfo,
    },
    {
      "name": "How to Pay",
      "icon": Assets.imagesPayInfo,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextTitleLarge(
                text: sectionName,
                color: Colors.black,
              ),
            ],
          ),
        ),
        ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: cardViewBox(),
              child: Row(
                children: [
                  ImageIcon(
                    AssetImage(
                      data[index]['icon'] ?? "",
                    ),
                    color: Colors.red,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TextTitleMedium(
                      text: data[index]['name'] ?? "",
                      color: Colors.grey.shade600,
                      size: 0,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ImageIcon(
                    const AssetImage(
                      Assets.imagesArrowLeft,
                    ),
                    size: 20,
                    color: Colors.grey.shade900,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const Gap(15),
        ),
      ],
    );
  }
}
