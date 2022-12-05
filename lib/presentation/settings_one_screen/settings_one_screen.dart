import 'controller/settings_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_bottom_bar.dart';

class SettingsOneScreen extends GetWidget<SettingsOneController> {
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
                    margin: getMargin(bottom: 4),
                    onTap: onTapArrowleft12),
                title: AppbarTitle(
                    text: "lbl_settings".tr, margin: getMargin(left: 106))),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: double.infinity,
                        margin: getMargin(left: 24, top: 43, right: 24),
                        decoration: AppDecoration.fillWhiteA702,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  decoration: AppDecoration.fillGray900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 17, bottom: 16),
                                            child: Container(
                                                height: getSize(64.00),
                                                width: getSize(64.00),
                                                child:
                                                    CircularProgressIndicator(
                                                        value: 0.5,
                                                        strokeWidth:
                                                            getHorizontalSize(
                                                                2.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 21, bottom: 16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Text(
                                                          "msg_profile_complet"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.08,
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          198.00),
                                                      margin: getMargin(top: 6),
                                                      child: Text(
                                                          "msg_quality_profile"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.50,
                                                                  height:
                                                                      1.67)))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 34, right: 10),
                                  child: Text("lbl_account".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansSemiBold12Bluegray400
                                          .copyWith(
                                              letterSpacing: 0.06,
                                              height: 1.00))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 20, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 5, top: 3, bottom: 2),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgUser1,
                                                              height:
                                                                  getVerticalSize(
                                                                      18.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      14.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 17, top: 2),
                                                          child: Text(
                                                              "lbl_personal_info"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansSemiBold16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.08,
                                                                      height:
                                                                          1.00)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 7),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height:
                                                        getVerticalSize(14.00),
                                                    width: getHorizontalSize(
                                                        9.00)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(291.00),
                                      margin: getMargin(left: 10, top: 16),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.indigo50))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 4, top: 20, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 4),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgWork,
                                                              height: getSize(
                                                                  17.00),
                                                              width: getSize(
                                                                  17.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 15, top: 4),
                                                          child: Text(
                                                              "lbl_experience"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansSemiBold16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.08,
                                                                      height:
                                                                          1.00)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(bottom: 7),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height:
                                                        getVerticalSize(14.00),
                                                    width: getHorizontalSize(
                                                        9.00)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(291.00),
                                      margin: getMargin(left: 10, top: 16),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.indigo50))),
                              Padding(
                                  padding: getPadding(top: 28, right: 10),
                                  child: Text("lbl_general".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansSemiBold12Bluegray400
                                          .copyWith(
                                              letterSpacing: 0.06,
                                              height: 1.00))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 3, top: 22, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgNotification,
                                                      height: getVerticalSize(
                                                          20.00),
                                                      width: getHorizontalSize(
                                                          17.00)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 15,
                                                          top: 1,
                                                          bottom: 2),
                                                      child: Text(
                                                          "lbl_notification".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.12)))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 5),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height:
                                                        getVerticalSize(14.00),
                                                    width: getHorizontalSize(
                                                        9.00)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(291.00),
                                      margin: getMargin(left: 10, top: 18),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.indigo50))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 2, top: 20, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgGlobe,
                                                          height:
                                                              getSize(20.00),
                                                          width:
                                                              getSize(20.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 14, top: 5),
                                                      child: Text(
                                                          "lbl_language".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansSemiBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.08,
                                                                  height:
                                                                      1.00)))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    top: 1, bottom: 7),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height:
                                                        getVerticalSize(14.00),
                                                    width: getHorizontalSize(
                                                        9.00)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(291.00),
                                      margin: getMargin(left: 10, top: 16),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.indigo50))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 4, top: 17, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgCheckmark20X16,
                                                          height:
                                                              getVerticalSize(
                                                                  20.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  16.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 15, top: 4),
                                                      child: Text(
                                                          "lbl_security".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansSemiBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.08,
                                                                  height:
                                                                      1.00)))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 3),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height:
                                                        getVerticalSize(14.00),
                                                    width: getHorizontalSize(
                                                        9.00)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(291.00),
                                      margin: getMargin(left: 10, top: 17),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.indigo50))),
                              Padding(
                                  padding: getPadding(top: 28, right: 10),
                                  child: Text("lbl_about".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansSemiBold12Bluegray400
                                          .copyWith(
                                              letterSpacing: 0.06,
                                              height: 1.00))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 3, top: 20, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowdown,
                                                          height:
                                                              getVerticalSize(
                                                                  19.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  18.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 15, top: 4),
                                                      child: Text(
                                                          "msg_legal_and_polic"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansSemiBold16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.08,
                                                                  height:
                                                                      1.00)))
                                                ]),
                                            Padding(
                                                padding: getPadding(
                                                    top: 2, bottom: 3),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height:
                                                        getVerticalSize(14.00),
                                                    width: getHorizontalSize(
                                                        9.00)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(291.00),
                                      margin: getMargin(left: 10, top: 17),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.indigo50))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 16, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(left: 2, top: 2),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgQuestion,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 14, top: 4),
                                                          child: Text(
                                                              "lbl_help_feedback"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansSemiBold16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.08,
                                                                      height:
                                                                          1.00)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 4, bottom: 4),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height:
                                                        getVerticalSize(14.00),
                                                    width: getHorizontalSize(
                                                        9.00)))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(291.00),
                                      margin: getMargin(left: 10, top: 18),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.indigo50))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 16, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 2, top: 2, bottom: 2),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgWarning,
                                                          height:
                                                              getSize(20.00),
                                                          width:
                                                              getSize(20.00)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 14,
                                                              top: 3,
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_about_us".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansSemiBold16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.08,
                                                                      height:
                                                                          1.00)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 4, bottom: 4),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright,
                                                    height:
                                                        getVerticalSize(14.00),
                                                    width: getHorizontalSize(
                                                        9.00)))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 10, top: 31, right: 10),
                                      child: Text("lbl_logout".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPlusJakartaSansSemiBold16RedA200
                                              .copyWith(
                                                  letterSpacing: 0.08,
                                                  height: 1.00))))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Message:
        return getDefaultWidget();
      case BottomBarEnum.Saved:
        return getDefaultWidget();
      case BottomBarEnum.Profil:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }

  onTapArrowleft12() {
    Get.back();
  }
}
