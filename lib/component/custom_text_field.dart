import 'package:ciyashopflutter/component/basic_widget.dart';
import 'package:ciyashopflutter/component/decorated_input_border.dart';
import 'package:ciyashopflutter/utils/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldRegular extends StatelessWidget {
  final String iconPath;
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController? textController;
  final bool enabled;
  final int maxLength;
  final int maxLines;
  final bool secureText;
  final String regAllowString;
  final String regDenyString;
  final ValueChanged<String>? onChanged;
  final String? Function(dynamic value)? validator;
  final bool isIcon;

  //void Function(String value) OnchangeListner;

  const TextFieldRegular({
    super.key,
    required this.iconPath,
    required this.hintText,
    required this.textInputType,
    this.textController,
    this.enabled = true,
    this.isIcon = true,
    this.secureText = false,
    this.maxLength = 100,
    this.maxLines = 1,
    this.onChanged,
    this.regAllowString = "",
    this.regDenyString = "",
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: myShadow(),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          isIcon ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ImageIcon(
              AssetImage(iconPath),
              color: ColorConstant.primaryColor,
              size: 20,
            ),
          ) : const SizedBox(),
          Expanded(
            child: TextFormField(
              inputFormatters: [
                if (regAllowString.isNotEmpty) FilteringTextInputFormatter(RegExp(regAllowString), allow: true),
                if (regDenyString.isNotEmpty) FilteringTextInputFormatter(RegExp(regDenyString), allow: false),
              ],
              onChanged: onChanged,
              maxLength: maxLength,
              enabled: enabled,
              controller: textController,
              autofocus: false,
              autocorrect: false,
              obscureText: secureText,
              style: Theme.of(context).textTheme.labelSmall,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.bodySmall?.apply(color: ColorConstant.textBody),
                contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 17),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                counterText: "",
              ),
              keyboardType: textInputType,
              validator: validator,
              maxLines: maxLines,
            ),
          ),
        ],
      ),
    );
  }
}

typedef OnTap<T> = void Function();

class TextFieldCountry extends StatelessWidget {
  final String iconPath;
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController? textController;
  final bool enabled;
  final int maxLength;
  final bool secureText;
  final String phoneCode;
  final OnTap<String>? onClick;
  final ValueChanged<String>? onChanged;

  //void Function(String value) OnchangeListner;

  const TextFieldCountry({
    super.key,
    required this.iconPath,
    required this.hintText,
    required this.textInputType,
    this.textController,
    this.enabled = true,
    this.secureText = false,
    this.maxLength = 100,
    this.phoneCode = "91",
    this.onClick,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: myShadow(),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: ImageIcon(
                AssetImage(iconPath),
                color: ColorConstant.primaryColor,
                size: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 5),
              child: InkWell(
                onTap: onClick,
                child: Text(
                  "+$phoneCode",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            Expanded(
              child: TextField(
                onChanged: onChanged,
                maxLength: maxLength,
                enabled: enabled,
                controller: textController,
                autofocus: false,
                autocorrect: false,
                obscureText: secureText,
                style: Theme.of(context).textTheme.labelSmall,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: Theme.of(context).textTheme.bodySmall,
                  border: InputBorder.none,
                  counterText: "",
                ),
                keyboardType: textInputType,
              ),
            )
          ],
        ),
      ),
    );
  }
}
