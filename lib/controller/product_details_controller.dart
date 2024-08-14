import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class ProductDetailsController extends GetxController {
  var currentPage = 0.obs;
  var pageController = PageController().obs;
  var selectedColorIndex = 0.obs;
  var selectedSizeIndex = 0.obs;
  var sizeList = ["XS", "S", "M", "L", "XL"].obs;
  var isVideo = false.obs;

  late VideoPlayerController videoPlayerController;

  @override
  void onInit() {
    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        videoPlayerController.play();
      });
    super.onInit();
  }

  onPageChange({required int index}) {
    currentPage.value = index;
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }
}
