import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/custom_app_bar.dart';
import 'package:ciyashopflutter/controller/my_order_controller.dart';
import 'package:ciyashopflutter/view/my_orders/widgets/order_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderScreen extends StatelessWidget {
  MyOrderScreen({super.key});

  final MyOrderController controller = Get.put(MyOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customAppBarWidgetWithBack(title: "My Orders", isBack: true),
      body: Stack(
        children: [
          appBarBackground(),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 20),
                decoration: cardViewBox(),
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const OrderWidgets();
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 15),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
