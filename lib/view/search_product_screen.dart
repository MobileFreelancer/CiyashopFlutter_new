import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/custom_text_field.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';

class SearchProductScreen extends StatelessWidget {
  const SearchProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "Search Here", isBack: true),
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: TextFieldRegular(
                        hintText: "Search Product",
                        iconPath: Assets.imagesSearch,
                        textInputType: TextInputType.text,
                        isIcon: true,
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 20 / 14,
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 20),
                        decoration: cardViewBox(),
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return const TextTitleSmall(
                              text: "USB Condenser Gaming Microphone, for PC, PS5",
                              color: ColorConstant.textBody,
                              textAlign: TextAlign.start,
                            );
                          },
                          separatorBuilder: (context, index) => Divider(color: ColorConstant.dividerColor2, thickness: 1),
                          itemCount: 5,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Image.asset(Assets.imagesImgNoProductFound),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: ElevatedButton(
                        child: const Text("CONTINUE SHOPPING"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
