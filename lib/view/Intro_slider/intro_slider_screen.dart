import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/controller/intro_slider_view_model.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/view/Intro_slider/widget/page_Items.dart';
import 'package:ciyashopflutter/view/Intro_slider/widget/page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class IntroSliderScreen extends StatelessWidget {
  IntroSliderScreen({super.key});

  final IntroSliderController controller = Get.put(IntroSliderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.lightColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 2,
          ),
          Expanded(
            flex: 3,
            child: Obx(
              () => PageView.builder(
                controller: controller.pageController.value,
                itemCount: controller.listPage.length,
                onPageChanged: (value) => controller.onPageChange(index: value),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => PageItems(data: controller.listPage[index]),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Obx(
              () => controller.currentPage.value != controller.listPage.length - 1
                  ? Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            controller.skipPage();
                          },
                          child: TextBodyMedium(
                            text: AppLocalizations.of(context)!.skip.toUpperCase(),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 20,
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: controller.listPage.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return PageIndicator(index: index);
                                },
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () => controller.nextPage(),
                          child: TextBodyMedium(
                            text: AppLocalizations.of(context)!.next.toUpperCase(),
                          ),
                        ),
                      ],
                    )
                  : ElevatedButton(
                      onPressed: () {
                        controller.onGetStarted(context);
                      },
                      child: Text(AppLocalizations.of(context)!.get_started.toUpperCase()),
                    ),
            ),
          ),
          const Gap(30),
        ],
      ),
    );
  }
}
