import 'package:ciyashopflutter/component/product_widget.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 11 / 16, crossAxisSpacing: 15, mainAxisSpacing: 15),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GridProductWidget();
        },
      ),
    );
  }
}