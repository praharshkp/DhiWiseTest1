import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPlusJakartaSansBold18.copyWith(
            letterSpacing: 0.09,
            height: 1.00,
            color: ColorConstant.gray900,
          ),
        ),
      ),
    );
  }
}
