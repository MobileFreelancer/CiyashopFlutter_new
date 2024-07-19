import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/custom_text_field.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "Contact Us", isBack: true),
      body: Stack(
        children: [
          appBarBackground(),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 20),
                decoration: cardViewBox(),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                height: 35.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.primaryColor.withOpacity(0.1),
                                      spreadRadius: 4,
                                      blurRadius: 4,
                                      offset: const Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      Assets.imagesBgCall,
                                      fit: BoxFit.cover,
                                      height: 60,
                                      width: 60,
                                    ),
                                    const Gap(10),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextBodySmall(
                                        text: "(+91) 1234567890",
                                        color: ColorConstant.textTitle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(20),
                            Expanded(
                              child: Container(
                                height: 35.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.primaryColor.withOpacity(0.1),
                                      spreadRadius: 4,
                                      blurRadius: 4,
                                      offset: const Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      Assets.imagesBgEmail,
                                      fit: BoxFit.cover,
                                      height: 60,
                                      width: 60,
                                    ),
                                    const Gap(10),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextBodySmall(
                                        text: "care@meandmo.co.in",
                                        color: ColorConstant.textTitle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                height: 35.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.primaryColor.withOpacity(0.1),
                                      spreadRadius: 4,
                                      blurRadius: 4,
                                      offset: const Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      Assets.imagesBgWebsite,
                                      fit: BoxFit.cover,
                                      height: 60,
                                      width: 60,
                                    ),
                                    const Gap(10),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextBodySmall(
                                        text: "https://meandmo.co.in/",
                                        color: ColorConstant.textTitle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Gap(20),
                            Expanded(
                              child: Container(
                                height: 35.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.primaryColor.withOpacity(0.1),
                                      spreadRadius: 4,
                                      blurRadius: 4,
                                      offset: const Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      Assets.imagesBgLocation,
                                      fit: BoxFit.cover,
                                      height: 60,
                                      width: 60,
                                    ),
                                    const Gap(10),
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: TextBodySmall(
                                        text: "GUJARAT (IN), AHMEDABAD 380016",
                                        color: ColorConstant.textTitle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(30),
                        const TextTitleLarge(
                          text: "Quick Contact",
                          color: Colors.black,
                        ),
                        const Gap(20),
                        const TextFieldRegular(
                          hintText: "Name",
                          iconPath: Assets.imagesUser,
                          textInputType: TextInputType.text,
                        ),
                        const Gap(20),
                        const TextFieldRegular(
                          hintText: "Email",
                          iconPath: Assets.imagesEmail,
                          textInputType: TextInputType.emailAddress,
                        ),
                        const Gap(20),
                        TextFieldCountry(
                          hintText: "Phone",
                          iconPath: Assets.imagesPhone,
                          textInputType: TextInputType.phone,
                          onClick: () {
                            showCountryPicker(
                              useSafeArea: true,
                              context: context,
                              onSelect: (value) {},
                            );
                          },
                        ),
                        const Gap(20),
                        const TextFieldRegular(
                          hintText: "Message",
                          iconPath: Assets.imagesEmail,
                          textInputType: TextInputType.text,
                          maxLines: 3,
                          isIcon: false,
                        ),
                        const Gap(20),
                        ElevatedButton(
                          child: const Text("SEND"),
                          onPressed: () {},
                        ),
                        const Gap(30),
                        const Align(
                          alignment: Alignment.center,
                          child: TextTitleLarge(
                            text: "Follow Us",
                            color: Colors.black,
                          ),
                        ),
                        const Gap(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: cardViewBox(),
                              child: const ImageIcon(
                                AssetImage(Assets.imagesFbOuter),
                                size: 15,
                              ),
                            ),
                            const Gap(10),
                            Container(
                              width: 30,
                              height: 30,
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: cardViewBox(),
                              child: const ImageIcon(
                                AssetImage(Assets.imagesTwitterOuter),
                                size: 15,
                              ),
                            ),
                            const Gap(10),
                            Container(
                              width: 30,
                              height: 30,
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: cardViewBox(),
                              child: const ImageIcon(
                                AssetImage(Assets.imagesWhatsappOuter),
                                size: 15,
                              ),
                            ),
                            const Gap(10),
                            Container(
                              width: 30,
                              height: 30,
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: cardViewBox(),
                              child: const ImageIcon(
                                AssetImage(Assets.imagesInstaOuter),
                                size: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
