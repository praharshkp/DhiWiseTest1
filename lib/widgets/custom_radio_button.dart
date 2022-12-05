import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.padding,
      this.shape,
      this.fontStyle,
      this.margin,
      this.onChange,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text});

  RadioPadding? padding;

  RadioShape? shape;

  RadioFontStyle? fontStyle;

  EdgeInsetsGeometry? margin;

  Function(String)? onChange;

  double? iconSize;

  String? value;

  String? groupValue;

  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: () {
          onChange!(value!);
        },
        child: Row(
          children: [
            SizedBox(
              height: getHorizontalSize(iconSize ?? 0),
              width: getHorizontalSize(iconSize ?? 0),
              child: Radio<String>(
                value: value ?? "",
                groupValue: groupValue,
                onChanged: (value) {
                  onChange!(value!);
                },
              ),
            ),
            Padding(
              padding: getPadding(
                left: 10,
              ),
              child: Text(
                text ?? "",
                textAlign: TextAlign.center,
                style: _setFontStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case RadioFontStyle.PlusJakartaSansSemiBold16Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.bluegray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
        ;
    }
  }
}

enum RadioPadding {
  PaddingT5,
  PaddingT18,
}

enum RadioShape {
  CircleBorder12,
}

enum RadioFontStyle {
  PlusJakartaSansSemiBold16,
  PlusJakartaSansSemiBold16Gray900,
}
