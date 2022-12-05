import 'controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FilterBottomsheet extends StatelessWidget {
  FilterBottomsheet(this.controller);

  FilterController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.infinity,
            decoration: AppDecoration.fillWhiteA702
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 24, top: 24, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 5, top: 4, bottom: 3),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 3),
                                              child: InkWell(
                                                  onTap: () {
                                                    onTapImgClose();
                                                  },
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgClose,
                                                      height: getSize(12.00),
                                                      width: getSize(12.00)))),
                                          Padding(
                                              padding: getPadding(left: 22),
                                              child: Text("lbl_filter".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPlusJakartaSansSemiBold18
                                                      .copyWith(
                                                          letterSpacing: 0.09,
                                                          height: 1.00)))
                                        ])),
                                Container(
                                    margin:
                                        getMargin(top: 6, right: 1, bottom: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(7.00))),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                  "lbl_reset_filters".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPlusJakartaSansSemiBold14DeeporangeA200
                                                      .copyWith(
                                                          letterSpacing: 0.07,
                                                          height: 1.00)))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: double.infinity,
                          margin: getMargin(left: 24, top: 30, right: 24),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(24.00))),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 1, right: 10),
                                    child: Text("lbl_categories".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPlusJakartaSansBold16
                                            .copyWith(
                                                letterSpacing: 0.08,
                                                height: 1.00))),
                                Container(
                                    margin: getMargin(top: 17, right: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(22.00))),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomTextFormField(
                                              width: 159,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .categoriesOneController,
                                              hintText: "msg_design_creati".tr,
                                              variant: TextFormFieldVariant
                                                  .FillDeeporangeA200,
                                              padding: TextFormFieldPadding
                                                  .PaddingT17,
                                              fontStyle: TextFormFieldFontStyle
                                                  .PlusJakartaSansSemiBold12,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 19,
                                                      top: 17,
                                                      right: 6,
                                                      bottom: 17),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmark9X12)),
                                              prefixConstraints: BoxConstraints(
                                                  minWidth: getSize(9.00),
                                                  minHeight: getSize(9.00))),
                                          CustomTextFormField(
                                              width: 100,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .categoriesTwoController,
                                              hintText: "lbl_finance".tr,
                                              margin: getMargin(left: 16),
                                              variant: TextFormFieldVariant
                                                  .OutlineBluegray50,
                                              padding: TextFormFieldPadding
                                                  .PaddingT17,
                                              fontStyle: TextFormFieldFontStyle
                                                  .PlusJakartaSansSemiBold12Gray900,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 19,
                                                      top: 16,
                                                      right: 7,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlus)),
                                              prefixConstraints: BoxConstraints(
                                                  minWidth: getSize(12.00),
                                                  minHeight: getSize(12.00)))
                                        ])),
                                Container(
                                    margin: getMargin(top: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(22.00))),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomTextFormField(
                                              width: 211,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .categoriesThreeController,
                                              hintText: "msg_engineering_a".tr,
                                              variant: TextFormFieldVariant
                                                  .OutlineBluegray50,
                                              padding: TextFormFieldPadding
                                                  .PaddingT17,
                                              fontStyle: TextFormFieldFontStyle
                                                  .PlusJakartaSansSemiBold12Gray900,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 19,
                                                      top: 16,
                                                      right: 7,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlus)),
                                              prefixConstraints: BoxConstraints(
                                                  minWidth: getSize(12.00),
                                                  minHeight: getSize(12.00))),
                                          Container(
                                              decoration: AppDecoration
                                                  .outlineBluegray50
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder24),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 19,
                                                            top: 16,
                                                            bottom: 16),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgPlus,
                                                            height:
                                                                getSize(12.00),
                                                            width: getSize(
                                                                12.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 7,
                                                            top: 18,
                                                            right: 16,
                                                            bottom: 12),
                                                        child: Text(
                                                            "lbl_writing".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPlusJakartaSansSemiBold12Gray900
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.06,
                                                                    height:
                                                                        1.00)))
                                                  ]))
                                        ])),
                                Container(
                                    margin: getMargin(top: 10, right: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(22.00))),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomTextFormField(
                                              width: 114,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .categoriesFourController,
                                              hintText: "lbl_marketing".tr,
                                              variant: TextFormFieldVariant
                                                  .OutlineBluegray50,
                                              padding: TextFormFieldPadding
                                                  .PaddingT17,
                                              fontStyle: TextFormFieldFontStyle
                                                  .PlusJakartaSansSemiBold12Gray900,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 19,
                                                      top: 16,
                                                      right: 7,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlus)),
                                              prefixConstraints: BoxConstraints(
                                                  minWidth: getSize(12.00),
                                                  minHeight: getSize(12.00))),
                                          CustomTextFormField(
                                              width: 158,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .categoriesFiveController,
                                              hintText: "msg_development_i".tr,
                                              margin: getMargin(left: 16),
                                              variant: TextFormFieldVariant
                                                  .OutlineBluegray50,
                                              padding: TextFormFieldPadding
                                                  .PaddingT17,
                                              fontStyle: TextFormFieldFontStyle
                                                  .PlusJakartaSansSemiBold12Gray900,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 19,
                                                      top: 16,
                                                      right: 7,
                                                      bottom: 16),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlus)),
                                              prefixConstraints: BoxConstraints(
                                                  minWidth: getSize(12.00),
                                                  minHeight: getSize(12.00)))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 24, top: 29, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_salaries".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPlusJakartaSansBold16
                                        .copyWith(
                                            letterSpacing: 0.08, height: 1.00)),
                                Padding(
                                    padding: getPadding(top: 1, bottom: 2),
                                    child: Text("lbl_6_000_month".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPlusJakartaSansSemiBold12DeeporangeA200
                                            .copyWith(
                                                letterSpacing: 0.06,
                                                height: 1.00)))
                              ]))),
                  Padding(
                      padding: getPadding(left: 24, top: 18, right: 24),
                      child: Slider(
                          value: 0.0,
                          min: 0.0,
                          max: 100.0,
                          onChanged: (value) {})),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 24, top: 4, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text("lbl_560".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansSemiBold12Bluegray400
                                        .copyWith(
                                            letterSpacing: 0.06, height: 1.00)),
                                Text("lbl_12_000".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPlusJakartaSansSemiBold12Bluegray400
                                        .copyWith(
                                            letterSpacing: 0.06, height: 1.00))
                              ]))),
                  Container(
                      width: getHorizontalSize(229.00),
                      margin: getMargin(left: 26, top: 32, right: 26),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(24.00))),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(right: 10),
                                child: Text("lbl_jobs".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPlusJakartaSansBold16
                                        .copyWith(
                                            letterSpacing: 0.08,
                                            height: 1.00))),
                            Container(
                                margin: getMargin(top: 18),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(22.00))),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomTextFormField(
                                          width: 108,
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.jobsOneController,
                                          hintText: "lbl_part_time".tr,
                                          variant: TextFormFieldVariant
                                              .FillDeeporangeA200,
                                          padding:
                                              TextFormFieldPadding.PaddingT17,
                                          fontStyle: TextFormFieldFontStyle
                                              .PlusJakartaSansSemiBold12,
                                          textInputAction: TextInputAction.done,
                                          prefix: Container(
                                              margin: getMargin(
                                                  left: 19,
                                                  top: 17,
                                                  right: 6,
                                                  bottom: 17),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmark9X12)),
                                          prefixConstraints: BoxConstraints(
                                              minWidth: getSize(9.00),
                                              minHeight: getSize(9.00))),
                                      Container(
                                          decoration: AppDecoration
                                              .outlineBluegray50
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder24),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 19,
                                                        top: 16,
                                                        bottom: 16),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgPlus,
                                                        height: getSize(12.00),
                                                        width: getSize(12.00))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 7,
                                                        top: 16,
                                                        right: 17,
                                                        bottom: 15),
                                                    child: Text(
                                                        "lbl_full_time2".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPlusJakartaSansSemiBold12Gray900
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.06,
                                                                height: 1.00)))
                                              ]))
                                    ]))
                          ])),
                  CustomButton(
                      width: 327,
                      text: "lbl_apply_filters".tr,
                      margin:
                          getMargin(left: 24, top: 30, right: 24, bottom: 20),
                      variant: ButtonVariant.FillGray900,
                      shape: ButtonShape.RoundedBorder24,
                      padding: ButtonPadding.PaddingAll20,
                      fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16,
                      alignment: Alignment.center)
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}
