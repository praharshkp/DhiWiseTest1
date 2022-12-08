import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      case ButtonPadding.PaddingAll20:
        return getPadding(
          all: 20,
        );
      case ButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGray900:
        return ColorConstant.gray900;
      case ButtonVariant.FillBluegray51:
        return ColorConstant.bluegray51;
      case ButtonVariant.OutlineBluegray50:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineIndigo50:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGreen50:
        return ColorConstant.green50;
      case ButtonVariant.FillRed50:
        return ColorConstant.red50;
      case ButtonVariant.FillRed51:
        return ColorConstant.red51;
      case ButtonVariant.OutlineBluegray51:
      case ButtonVariant.OutlineGray900:
        return null;
      default:
        return ColorConstant.gray100;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray50:
        return Border.all(
          color: ColorConstant.bluegray50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineIndigo50:
        return Border.all(
          color: ColorConstant.indigo50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray51:
        return Border.all(
          color: ColorConstant.bluegray51,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray900:
        return Border.all(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillGray100:
      case ButtonVariant.FillGray900:
      case ButtonVariant.FillBluegray51:
      case ButtonVariant.FillGreen50:
      case ButtonVariant.FillRed50:
      case ButtonVariant.FillRed51:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case ButtonShape.RoundedBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.CustomBorderTL24:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              24.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              24.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              24.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
        );
      case ButtonShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case ButtonShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PlusJakartaSansSemiBold16:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold14:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PlusJakartaSansMedium14:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.InterRegular12:
        return TextStyle(
          color: ColorConstant.bluegray400,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold16Bluegray300:
        return TextStyle(
          color: ColorConstant.bluegray300,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold12Gray600:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold12Gray50:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.InterRegular12GreenA700:
        return TextStyle(
          color: ColorConstant.greenA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterRegular12Deeporange400:
        return TextStyle(
          color: ColorConstant.deepOrange400,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.InterRegular12RedA200:
        return TextStyle(
          color: ColorConstant.redA200,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold12Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PlusJakartaSansSemiBold14Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      default:
        return TextStyle(
          color: ColorConstant.bluegray400,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder8,
  RoundedBorder24,
  RoundedBorder20,
  CustomBorderTL24,
  RoundedBorder12,
  RoundedBorder4,
}

enum ButtonPadding {
  PaddingAll8,
  PaddingAll4,
  PaddingAll20,
  PaddingAll16,
}

enum ButtonVariant {
  FillGray100,
  FillGray900,
  FillBluegray51,
  OutlineBluegray50,
  OutlineIndigo50,
  FillGreen50,
  FillRed50,
  FillRed51,
  OutlineBluegray51,
  OutlineGray900,
}

enum ButtonFontStyle {
  PlusJakartaSansMedium12,
  PlusJakartaSansSemiBold16,
  PlusJakartaSansSemiBold14,
  PlusJakartaSansMedium14,
  InterRegular12,
  PlusJakartaSansSemiBold16Bluegray300,
  PlusJakartaSansSemiBold12,
  PlusJakartaSansSemiBold12Gray600,
  PlusJakartaSansSemiBold12Gray50,
  InterRegular12GreenA700,
  InterRegular12Deeporange400,
  InterRegular12RedA200,
  PlusJakartaSansSemiBold12Gray900,
  PlusJakartaSansSemiBold14Gray900,
}
