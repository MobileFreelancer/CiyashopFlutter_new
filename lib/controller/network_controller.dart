import 'dart:async';

import 'package:ciyashopflutter/generated/assets.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

enum MConnectivityResult { none, wifi, mobile }

class NetworkController extends GetxController {
  final _connectionType = MConnectivityResult.none.obs;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription _streamSubscription;
  var dialogId = 100.obs;

  MConnectivityResult get connectionType => _connectionType.value;

  set connectionType(value) {
    _connectionType.value = value;
  }

  @override
  void onInit() {
    super.onInit();
    getConnectivityType();
    _streamSubscription = _connectivity.onConnectivityChanged.listen(_updateState);
  }

  Future<void> getConnectivityType() async {
    late ConnectivityResult connectivityResult;
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return _updateState(connectivityResult);
  }

  _updateState(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionType = MConnectivityResult.wifi;
        hideDialog();
        break;
      case ConnectivityResult.mobile:
        connectionType = MConnectivityResult.mobile;
        hideDialog();
        break;
      case ConnectivityResult.none:
        connectionType = MConnectivityResult.none;
        showDialog();
        break;
      default:
        print('Failed to get connection type');
        showDialog();
        break;
    }
  }

  @override
  void onClose() {
    _streamSubscription.cancel();
  }

  showDialog() {
    if (Get.isBottomSheetOpen ?? false) {
      Get.back();
    }
    Get.bottomSheet(
      enableDrag: false,
      isDismissible: false,

      PopScope(
        canPop: false,
        child: Builder(
          builder: (context) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ColorConstant.backgroundColor
              ),
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Lottie.asset(
                      Assets.assetsNetwork,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: Text(
                      "No Internet Found",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    child: Text(
                      "Please check your internet connectivity",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  hideDialog() {
    if ((Get.isBottomSheetOpen ?? false) && dialogId == dialogId) {
      Get.back();
    }
  }
}
