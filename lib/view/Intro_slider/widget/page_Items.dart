import 'package:ciyashopflutter/component/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PageItems extends StatelessWidget {
  const PageItems({super.key, required this.data});

  final Map<String, String> data;

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                data['image'] ?? "",
              ),
            ),
            const Gap(50),
            TextHeadlineMedium(
              text: data['title'] ?? "",
              textAlign: TextAlign.center,
            ),
            const Gap(20),
            TextBodyLarge(
              text: data['description'] ?? "",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
