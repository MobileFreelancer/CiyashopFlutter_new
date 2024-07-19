import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:flutter/material.dart';

class HorizontalCategory extends StatelessWidget {
  const HorizontalCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 13 / 17,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: cardViewBox(),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorConstant.primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(radiusMain),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(Assets.imagesTestproduct, fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextTitleSmall(
                    text: "Smart Watch",
                    color: ColorConstant.primaryColor,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class HorizontalCategoryWithBackground extends StatelessWidget {
  const HorizontalCategoryWithBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) {
          return AspectRatio(
            aspectRatio: 19 / 20,
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: cardViewBox(),
                  margin: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(radiusMain),
                      image: const DecorationImage(image: AssetImage(Assets.imagesTestProductBg), fit: BoxFit.cover),
                    ),
                    clipBehavior: Clip.hardEdge,
                    height: double.infinity,
                    width: double.infinity,
                    child: ColoredBox(
                      color: Colors.black.withOpacity(0.4),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: TextTitleSmall(
                          text: "Mobile",
                          color: ColorConstant.textWhite,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: cardViewBox(),
                    alignment: Alignment.center,
                    height: 35,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    width: double.maxFinite,
                    child: TextLabelSmall(
                      text: "Shop Now",
                      color: ColorConstant.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
