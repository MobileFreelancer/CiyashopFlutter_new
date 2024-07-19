import 'package:ciyashopflutter/controller/intro_slider_view_model.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageIndicator extends StatelessWidget {
  PageIndicator({super.key, required this.index});

  final IntroSliderController controller = Get.find<IntroSliderController>();
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(5),
      width: 10,
      // width: ref.watch(introSliderVMProvider).currentPage == index ? 15 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: controller.currentPage.value == index
            ? ColorConstant.primaryColor
            : ColorConstant.primaryColor.withOpacity(0.3),
      ),
      duration: duration,
    );
  }
}
