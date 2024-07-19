import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:ciyashopflutter/utils/size_constant.dart';
import 'package:flutter/material.dart';

typedef OnClick<T> = void Function();

class CustomRichText extends StatelessWidget {
  final String normalText;
  final String linkedText;
  final OnClick? onClick;
  final String fontFamily;

  const CustomRichText({
    super.key,
    required this.linkedText,
    required this.normalText,
    this.onClick,
    this.fontFamily = FontsConstants.workSans,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onClick,
      child: RichText(
        text: TextSpan(
          style: Theme.of(context).textTheme.titleMedium?.apply(
                color: ColorConstant.textTitle,
                fontFamily: fontFamily,
              ),
          children: [
            TextSpan(text: normalText),
            const TextSpan(text: " "),
            TextSpan(
              text: linkedText,
              style: Theme.of(context).textTheme.titleMedium?.apply(
                    color: ColorConstant.primaryColor,
                    fontFamily: fontFamily,
                  ),
              // recognizer: TapGestureRecognizer()..onTap = onClick,
            ),
          ],
        ),
      ),
    );
  }
}
