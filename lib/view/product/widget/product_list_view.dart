import 'package:ciyashopflutter/component/product_widget.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const AspectRatio(
            aspectRatio: 20 / 8,
            child: ListProductWidget(),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 15),
      ),
    );
  }
}
