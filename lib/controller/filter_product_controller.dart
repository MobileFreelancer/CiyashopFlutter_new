import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterProductController extends GetxController {
  RangeValues rangeSliderValue = const RangeValues(300.0, 1200.0);
  var selectedColorIndex = 0.obs;
  var selectedSizeIndex = 0.obs;
  var sizeList = ["XS", "S", "M", "L", "XL"].obs;
  var is5Star = false.obs;
  var is4Star = false.obs;
  var is3Star = false.obs;
  var is2Star = false.obs;
  var is1Star = false.obs;

}
