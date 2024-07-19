import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:flutter/material.dart';

class ImageButtonWhite extends StatelessWidget {
  const ImageButtonWhite({super.key, required this.onTap, required this.images});

  final Function()? onTap;
  final String images;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0)
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(1),
        height: double.infinity,
        decoration: cardViewBox(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(images),
        ),
      ),
    );
  }
}
