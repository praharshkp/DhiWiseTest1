import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.PlusJakartaSansSemiBold12:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.PlusJakartaSansSemiBold12Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        );
      case TextFormFieldFontStyle.PlusJakartaSansMedium12:
        return TextStyle(
          color: ColorConstant.gray6007c,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.bluegray400,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.FillDeeporangeA200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineBluegray50:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.bluegray50,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillGray200:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.indigo50,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillDeeporangeA200:
        return ColorConstant.deepOrangeA200;
      case TextFormFieldVariant.OutlineBluegray50:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.FillGray200:
        return ColorConstant.gray200;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.FillDeeporangeA200:
        return true;
      case TextFormFieldVariant.OutlineBluegray50:
        return true;
      case TextFormFieldVariant.FillGray200:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT17:
        return getPadding(
          left: 14,
          top: 17,
          right: 14,
          bottom: 14,
        );
      case TextFormFieldPadding.PaddingT24:
        return getPadding(
          left: 18,
          top: 24,
          right: 18,
          bottom: 18,
        );
      default:
        return getPadding(
          left: 14,
          top: 20,
          right: 14,
          bottom: 14,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder24,
  CircleBorder28,
}

enum TextFormFieldPadding {
  PaddingT20,
  PaddingT17,
  PaddingT24,
}

enum TextFormFieldVariant {
  OutlineIndigo50,
  FillDeeporangeA200,
  OutlineBluegray50,
  FillGray200,
}

enum TextFormFieldFontStyle {
  PlusJakartaSansMedium16,
  PlusJakartaSansSemiBold12,
  PlusJakartaSansSemiBold12Gray900,
  PlusJakartaSansMedium12,
}
