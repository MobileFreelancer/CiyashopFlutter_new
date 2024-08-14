
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../component/custom_text.dart';
import '../../controller/profile_controller.dart';

class Profilelistitem extends StatelessWidget {
   Profilelistitem({super.key, required this.index});

   final int index;
  final ProfileController controller = Get.find<ProfileController>();


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Gap(20),
              controller.webViewPages[index].logo != null ?
              ImageIcon(AssetImage(controller.webViewPages[index].logo.toString()) ,
                size: 20,
              ) : SizedBox(width: 0),

              TextBodyMedium(text: controller.webViewPages[index].name.toString()),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: controller.webViewPages[index] == "Notification"
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
    );
  }
}
