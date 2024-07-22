import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:scratcher/scratcher.dart';



void showLongToast({required String Msg}) {
  Fluttertoast.showToast(
    msg: Msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM_RIGHT,
    timeInSecForIosWeb: 2,
    backgroundColor: ColorConstant.primaryColor,
    textColor: Colors.white,
    fontSize: 14.0,
  );
}
void showShortToast({required String Msg}) {
  Fluttertoast.showToast(
    msg: Msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM_RIGHT,
    timeInSecForIosWeb: 2,
    backgroundColor: ColorConstant.primaryColor,
    textColor: Colors.white,
    fontSize: 14.0,
  );
}


showLoader() {
  FocusManager.instance.primaryFocus?.unfocus();
  return (Get.isDialogOpen ?? false)
      ? const SizedBox()
      : Get.dialog(
          barrierDismissible: false,
          Dialog(
            backgroundColor: Colors.transparent,
            child: SizedBox(
              height: 80,
              width: 80,
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.blue,
                  BlendMode.modulate,
                ),
                child: Lottie.asset(
                  Assets.ciyashopFlutterAssetsLoader,
                ),
              ),
            ),
          ),
        );
}

hideLoader({bool? hideOverlay}) {
  FocusManager.instance.primaryFocus?.unfocus();
  if (Get.isDialogOpen ?? false) {
    Get.back(closeOverlays: hideOverlay ?? true);
  }
}

// showSnackBarSuccess({required String message, double bottom = 90}) {
//   Get.snackbar(
//     "",
//     "",
//     titleText: const SizedBox(),
//     messageText: Container(
//       alignment: Alignment.centerLeft,
//       padding: const EdgeInsets.only(bottom: 5),
//       child: Tex(
//         text: message,
//         fontFamily: FontsConstants.notoSans,
//         color: const Color.fromRGBO(3, 98, 14, 1),
//       ),
//     ),
//     backgroundColor: ColorConstants.snackBarSuccess,
//     snackPosition: SnackPosition.BOTTOM,
//     animationDuration: const Duration(milliseconds: 500),
//     barBlur: 0,
//     colorText: Colors.black,
//     icon: Align(
//       alignment: Alignment.center,
//       child: Image.asset(
//         Assets.iconsIcSuccess,
//         width: 20,
//         height: 20,
//       ),
//     ),
//     padding: const EdgeInsets.all(10),
//     margin: EdgeInsets.only(bottom: bottom, left: 15, right: 15),
//   );
// }
//
// showSnackBarError({required String message, double bottom = 90}) {
//   Get.snackbar(
//     "",
//     "",
//     titleText: const SizedBox(),
//     messageText: Container(
//       alignment: Alignment.centerLeft,
//       padding: const EdgeInsets.only(bottom: 5),
//       child: TextBodySmall(
//         text: message,
//         fontFamily: FontsConstants.notoSans,
//         color: const Color.fromRGBO(149, 46, 23, 1),
//       ),
//     ),
//     backgroundColor: ColorConstants.snackBarError,
//     snackPosition: SnackPosition.BOTTOM,
//     animationDuration: const Duration(milliseconds: 400),
//     barBlur: 0,
//     colorText: Colors.black,
//     icon: Align(
//       alignment: Alignment.center,
//       child: Image.asset(
//         Assets.iconsIcError,
//         width: 20,
//         height: 20,
//       ),
//     ),
//     padding: const EdgeInsets.all(10),
//     margin: EdgeInsets.only(bottom: bottom, left: 15, right: 15),
//   );
// }
//
// showSnackBarInfo({required String message, double bottom = 90}) {
//   Get.snackbar(
//     "",
//     "",
//     titleText: const SizedBox(),
//     messageText: Container(
//       alignment: Alignment.centerLeft,
//       padding: const EdgeInsets.only(bottom: 5),
//       child: TextBodySmall(
//         text: message,
//         fontFamily: FontsConstants.notoSans,
//         color: const Color.fromRGBO(16, 16, 16, 0.6),
//       ),
//     ),
//     backgroundColor: ColorConstants.snackBarInfo,
//     snackPosition: SnackPosition.BOTTOM,
//     animationDuration: const Duration(milliseconds: 500),
//     barBlur: 0,
//     colorText: Colors.black,
//     icon: Align(
//       alignment: Alignment.center,
//       child: Image.asset(
//         Assets.iconsIcInfoBg,
//         width: 20,
//         height: 20,
//       ),
//     ),
//     padding: const EdgeInsets.all(10),
//     margin: EdgeInsets.only(bottom: bottom, left: 15, right: 15),
//   );
// }

showCouponDialog() {
  FocusManager.instance.primaryFocus?.unfocus();
  return (Get.isDialogOpen ?? false)
      ? const SizedBox()
      : Get.dialog(
          Dialog(
              backgroundColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Scratcher(
                      brushSize: 30,
                      threshold: 50,
                      onChange: (value) {
                        print("Scratch progress: $value%");
                        if (value > 30) {
                          if (Get.isDialogOpen ?? false) {
                            Get.back();
                          }
                        }
                      },
                      onThreshold: () => print("Threshold reached, you won!"),
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Image.asset(Assets.imagesImgCoupons),
                      ),
                    ),
                  ),
                  const Gap(10),
                  const TextTitleLarge(
                    text: "Scratch Here to Get",
                    color: Colors.white,
                    textAlign: TextAlign.start,
                  ),
                ],
              )),
        );
}

showCurrencyDialog() {
  FocusManager.instance.primaryFocus?.unfocus();
  return (Get.isDialogOpen ?? false)
      ? const SizedBox()
      : Get.dialog(
          Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: ColorConstant.primaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                    child: const TextTitleMedium(
                      text: "Choose Currency",
                      color: Colors.white,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 20 / 9,
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: TextTitleMedium(
                            text: r"USD ($)",
                            color: Colors.black,
                            textAlign: TextAlign.start,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => index < 2 ? Divider(color: ColorConstant.dividerColor2, thickness: 1) : const SizedBox(),
                      itemCount: 3,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
}


class CustomRangeSlider extends StatefulWidget {
  final double min;
  final double max;
  final double lowerValue;
  final double upperValue;
  final Color trackColor;
  final Color thumbColor;

  const CustomRangeSlider({
    Key? key,
    required this.min,
    required this.max,
    required this.lowerValue,
    required this.upperValue,
    this.trackColor = Colors.grey,
    this.thumbColor = Colors.blue,
  }) : super(key: key);

  @override
  State<CustomRangeSlider> createState() => _CustomRangeSliderState();
}

class _CustomRangeSliderState extends State<CustomRangeSlider> {
  double _lowerValue = 0.0;
  double _upperValue = 1.0;

  @override
  void initState() {
    super.initState();
    _lowerValue = widget.lowerValue;
    _upperValue = widget.upperValue;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background track
        Container(
          width: double.infinity,
          height: 10.0, // Adjust height as needed
          color: widget.trackColor,
        ),
        // Lower thumb and active track
        Positioned(
          left: ((_lowerValue - widget.min) / (widget.max - widget.min)) *
              context.size!.width,
          child: Container(
            width: 20.0, // Adjust width as needed
            height: 20.0, // Adjust height as needed
            decoration: BoxDecoration(
              color: widget.thumbColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
        // Upper thumb and active track (if applicable)
        _upperValue > _lowerValue
            ? Positioned(
          left: ((_upperValue - widget.min) / (widget.max - widget.min)) *
              context.size!.width,
          child: Container(
            width: 20.0, // Adjust width as needed
            height: 20.0, // Adjust height as needed
            decoration: BoxDecoration(
              color: widget.thumbColor,
              shape: BoxShape.circle,
            ),
          ),
        )
            : Container(),
        // Gesture area for dragging
        GestureDetector(
          onHorizontalDragUpdate: (DragUpdateDetails details) {
            double delta = details.delta.dx;
            setState(() {
              _lowerValue = (clampDouble(_lowerValue + delta, widget.min, widget.max));
              if (_upperValue > _lowerValue) {
                _upperValue = clampDouble(_upperValue + delta, _lowerValue, widget.max);
              }
            });
          },
        ),
      ],
    );
  }

  double clampDouble(double value, double lowerLimit, double upperLimit) {
    return value.clamp(lowerLimit, upperLimit);
  }
}
