import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:ciyashopflutter/component/custom_text_field.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "Add New Address", isBack: true),
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Gap(30),
                      const TextTitleLarge(
                        text: "Add Billing Address",
                        color: Colors.black,
                      ),
                      const Gap(20),
                      const TextFieldRegular(
                        hintText: "User Name",
                        iconPath: Assets.imagesEmail,
                        textInputType: TextInputType.text,
                        isIcon: false,
                      ),
                      const Gap(20),
                      const TextFieldRegular(
                        hintText: "Last Name",
                        iconPath: Assets.imagesEmail,
                        textInputType: TextInputType.text,
                        isIcon: false,
                      ),
                      const Gap(20),
                      const TextFieldRegular(
                        hintText: "Pin Code",
                        iconPath: Assets.imagesEmail,
                        textInputType: TextInputType.number,
                        isIcon: false,
                      ),
                      const Gap(20),
                      const TextFieldRegular(
                        hintText: "Address1",
                        iconPath: Assets.imagesEmail,
                        textInputType: TextInputType.streetAddress,
                        maxLines: 2,
                        isIcon: false,
                      ),
                      const Gap(20),
                      const TextFieldRegular(
                        hintText: "Address2",
                        iconPath: Assets.imagesEmail,
                        textInputType: TextInputType.streetAddress,
                        isIcon: false,
                        maxLines: 2,
                      ),
                      const Gap(20),
                      const TextFieldRegular(
                        hintText: "City/Town",
                        iconPath: Assets.imagesEmail,
                        textInputType: TextInputType.streetAddress,
                        isIcon: false,
                      ),
                      const Gap(20),
                      const TextFieldRegular(
                        hintText: "State",
                        iconPath: Assets.imagesEmail,
                        textInputType: TextInputType.streetAddress,
                        isIcon: false,
                      ),
                      const Gap(30),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
                              ),
                              child: const Text("CANCEL"),
                              onPressed: () {},
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            child: ElevatedButton(
                              child: const Text("SAVE"),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ],
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
