import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  var currentPage = 0.obs;
  var pageController = PageController().obs;
  var selectedColorIndex = 0.obs;
  var selectedSizeIndex = 0.obs;
  var sizeList = ["XS", "S", "M", "L", "XL"].obs;

  onPageChange({required int index}) {
    currentPage.value = index;
  }
}
