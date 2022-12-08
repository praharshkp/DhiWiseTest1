import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll18:
        return getPadding(
          all: 18,
        );
      case IconButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case IconButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGray90065:
        return ColorConstant.gray90065;
      case IconButtonVariant.FillOrange50065:
        return ColorConstant.orange50065;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillTealA70065:
        return ColorConstant.tealA70065;
      case IconButtonVariant.FillDeeppurple40065:
        return ColorConstant.deepPurple40065;
      case IconButtonVariant.FillTealA700:
        return ColorConstant.tealA700;
      default:
        return ColorConstant.gray100;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder32:
        return BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        );
      case IconButtonShape.RoundedBorder39:
        return BorderRadius.circular(
          getHorizontalSize(
            39.50,
          ),
        );
      case IconButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case IconButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder8,
  CircleBorder32,
  RoundedBorder39,
  CircleBorder24,
  CircleBorder16,
}

enum IconButtonPadding {
  PaddingAll8,
  PaddingAll18,
  PaddingAll13,
  PaddingAll4,
}

enum IconButtonVariant {
  FillGray100,
  FillGray90065,
  FillOrange50065,
  FillWhiteA700,
  FillTealA70065,
  FillDeeppurple40065,
  FillTealA700,
}
