
import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/product_widget.dart';
import 'package:ciyashopflutter/controller/product_list_controller.dart';
import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterOption extends StatelessWidget {
  FilterOption({super.key});

  final ProductListController controller = Get.find<ProductListController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      clipBehavior: Clip.hardEdge,
      decoration: cardViewBox(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FilterOptionItems(
            icon: Assets.imagesListView,
            title: "List View",
            color: controller.selectedFilterOption == ""
                ? ColorConstant.primaryColor
                : ColorConstant.textBody,
            onclick: () {
              controller.selectedFilterOption = "listview";
            },
          ),
          Flexible(child: verticalDivider(indent: 15)),
          FilterOptionItems(
            icon: Assets.imagesGridView,
            title: "Grid View",
            color: controller.selectedFilterOption == ""
                ? ColorConstant.primaryColor
                : ColorConstant.textBody,
            onclick: () {
              controller.selectedFilterOption = "gridview";
            },
          ),
          Flexible(child: verticalDivider(indent: 15)),
          FilterOptionItems(
            icon: Assets.imagesSortby,
            title: "Sort By",
            color: controller.selectedFilterOption == ""
                ? ColorConstant.primaryColor
                : ColorConstant.textBody,
            onclick: () {
              controller.selectedFilterOption = "sortby";
            },
          ),
          Flexible(child: verticalDivider(indent: 15)),
          FilterOptionItems(
            icon: Assets.imagesFilter,
            title: "Filter",
            color: controller.selectedFilterOption == ""
                ? ColorConstant.primaryColor
                : ColorConstant.textBody,
            onclick: () {
              controller.selectedFilterOption = "filter";
            },
          ),
        ],
      ),
    );
  }
}