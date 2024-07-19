import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InnerCategoryScreen extends StatelessWidget {
  const InnerCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "All Category",isBack: true),
      body: Stack(
        children: [
          appBarBackground(),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 20),
                  decoration: cardViewBox(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return AspectRatio(
                            aspectRatio: 20 / 5,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: ColorConstant.primaryColor.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(radiusMain),
                                        ),
                                        clipBehavior: Clip.hardEdge,
                                        child: Image.asset(Assets.imagesTestproduct, fit: BoxFit.cover),
                                      ),
                                      const Gap(10),
                                      Text(
                                        "Smart Watch",
                                        style: Theme.of(context).textTheme.titleSmall?.apply(color: ColorConstant.primaryColor, fontSizeDelta: -2),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: ImageIcon(
                                    AssetImage(Assets.imagesArrow),
                                    size: 15,
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(color: ColorConstant.textBody.withOpacity(0.1)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
