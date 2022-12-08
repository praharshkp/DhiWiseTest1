import 'controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_text_form_field.dart';

class ChatScreen extends GetWidget<ChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA702,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 16,
                leading: AppbarImage(
                    height: getVerticalSize(13.00),
                    width: getHorizontalSize(16.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(bottom: 5),
                    onTap: onTapArrowleft4),
                title: AppbarTitle(
                    text: "lbl_chance_septimus".tr,
                    margin: getMargin(left: 65))),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 42, right: 24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                              height: getSize(32.00),
                                              width: getSize(32.00),
                                              margin: getMargin(bottom: 36),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        16.00)),
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage56X56,
                                                                height: getSize(
                                                                    32.00),
                                                                width: getSize(
                                                                    32.00),
                                                                fit: BoxFit
                                                                    .cover))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Container(
                                                            height:
                                                                getSize(8.00),
                                                            width:
                                                                getSize(8.00),
                                                            margin: getMargin(
                                                                left: 10,
                                                                top: 10),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .tealA700,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            4.00)),
                                                                border: Border.all(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    width: getHorizontalSize(
                                                                        1.00)))))
                                                  ])),
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL241),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    163.00),
                                                            margin: getMargin(
                                                                left: 12,
                                                                top: 18,
                                                                right: 12,
                                                                bottom: 12),
                                                            child: Text(
                                                                "msg_lorem_ipsum_dol2"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPlusJakartaSansMedium14Gray600
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.57))))
                                                  ]))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 44, top: 8, right: 44),
                                        child: Text("lbl_15_42_pm".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansMedium10
                                                .copyWith(
                                                    letterSpacing: 0.05,
                                                    height: 1.00))))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 24, top: 27, right: 24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomButton(
                                                  width: 186,
                                                  text:
                                                      "msg_lorem_ipsum_dol3".tr,
                                                  variant:
                                                      ButtonVariant.FillGray900,
                                                  shape: ButtonShape
                                                      .CustomBorderTL24,
                                                  padding: ButtonPadding
                                                      .PaddingAll16,
                                                  fontStyle: ButtonFontStyle
                                                      .PlusJakartaSansMedium14),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 7, bottom: 7),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16.00)),
                                                      child: CommonImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImage50X50,
                                                          height:
                                                              getSize(32.00),
                                                          width: getSize(32.00),
                                                          fit: BoxFit.cover)))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 44, top: 8, right: 44),
                                            child: Text("lbl_15_42_pm".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium10
                                                    .copyWith(
                                                        letterSpacing: 0.05,
                                                        height: 1.00))))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 24, top: 27, right: 24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                              height: getSize(32.00),
                                              width: getSize(32.00),
                                              margin: getMargin(bottom: 36),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        16.00)),
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage56X56,
                                                                height: getSize(
                                                                    32.00),
                                                                width: getSize(
                                                                    32.00),
                                                                fit: BoxFit
                                                                    .cover))),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Container(
                                                            height:
                                                                getSize(8.00),
                                                            width:
                                                                getSize(8.00),
                                                            margin: getMargin(
                                                                left: 10,
                                                                top: 10),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .tealA700,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            4.00)),
                                                                border: Border.all(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    width: getHorizontalSize(
                                                                        1.00)))))
                                                  ])),
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderTL241),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    163.00),
                                                            margin: getMargin(
                                                                left: 12,
                                                                top: 18,
                                                                right: 12,
                                                                bottom: 12),
                                                            child: Text(
                                                                "msg_lorem_ipsum_dol2"
                                                                    .tr,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPlusJakartaSansMedium14Gray600
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.07,
                                                                        height:
                                                                            1.57))))
                                                  ]))
                                        ])),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 44, top: 8, right: 44),
                                        child: Text("lbl_15_42_pm".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansMedium10
                                                .copyWith(
                                                    letterSpacing: 0.05,
                                                    height: 1.00))))
                              ])),
                      CustomTextFormField(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.textinputController,
                          hintText: "msg_type_your_messa".tr,
                          margin: getMargin(
                              left: 24, top: 299, right: 24, bottom: 20),
                          variant: TextFormFieldVariant.FillGray200,
                          shape: TextFormFieldShape.CircleBorder28,
                          padding: TextFormFieldPadding.PaddingT24,
                          fontStyle:
                              TextFormFieldFontStyle.PlusJakartaSansMedium12,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
