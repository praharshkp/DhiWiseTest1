import '../profile_screen/widgets/listskills_one_item_widget.dart';
import '../profile_screen/widgets/listuser2_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/listskills_one_item_model.dart';
import 'models/listuser2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_bottom_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
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
                    margin: getMargin(top: 3, bottom: 3),
                    onTap: onTapArrowleft11),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(19.00),
                      svgPath: ImageConstant.imgSettings20X19)
                ]),
            body: SingleChildScrollView(
                padding: getPadding(top: 44),
                child: Padding(
                    padding: getPadding(bottom: 121),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getVerticalSize(229.00),
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(left: 24, right: 24),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(bottom: 10),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                8.00)),
                                                    child: CommonImageView(
                                                        imagePath:
                                                            ImageConstant.imgBg,
                                                        height: getVerticalSize(
                                                            120.00),
                                                        width:
                                                            getHorizontalSize(
                                                                327.00),
                                                        fit: BoxFit.cover)))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 87,
                                                    top: 10,
                                                    right: 87,
                                                    bottom: 5),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              right: 16),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          44.50)),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImage50X50,
                                                                  height:
                                                                      getSize(
                                                                          89.00),
                                                                  width: getSize(
                                                                      89.00),
                                                                  fit: BoxFit
                                                                      .cover))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 12),
                                                              child: Text(
                                                                  "msg_gustavo_lipshut"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtPlusJakartaSansBold18Gray901
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              0.09,
                                                                          height:
                                                                              1.00)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 8,
                                                              right: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "lbl_open_to_work"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium14
                                                                            .copyWith(letterSpacing: 0.12))),
                                                                CustomIconButton(
                                                                    height: 16,
                                                                    width: 16,
                                                                    margin: getMargin(
                                                                        left: 8,
                                                                        bottom:
                                                                            2),
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillTealA700,
                                                                    padding:
                                                                        IconButtonPadding
                                                                            .PaddingAll4,
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgCheck))
                                                              ]))
                                                    ])))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(270.00),
                                  margin:
                                      getMargin(left: 24, top: 15, right: 24),
                                  child: Text("msg_ui_ux_designer".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterRegular14
                                          .copyWith(
                                              letterSpacing: 0.07,
                                              height: 1.57)))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin:
                                      getMargin(left: 24, top: 20, right: 24),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(24.00))),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            24.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .fillGray201
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 17,
                                                                        bottom:
                                                                            14),
                                                                    child: Text(
                                                                        "lbl_25"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtPlusJakartaSansBold16.copyWith(
                                                                            letterSpacing:
                                                                                0.08,
                                                                            height:
                                                                                1.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 8,
                                                                        top: 19,
                                                                        bottom:
                                                                            16),
                                                                    child: Text(
                                                                        "lbl_applied"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtPlusJakartaSansMedium12.copyWith(
                                                                            letterSpacing:
                                                                                0.06,
                                                                            height:
                                                                                1.00)))
                                                              ])))
                                                ])),
                                        Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            24.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          decoration: AppDecoration
                                                              .fillGray201
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 17,
                                                                        bottom:
                                                                            14),
                                                                    child: Text(
                                                                        "lbl_10"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtPlusJakartaSansBold16.copyWith(
                                                                            letterSpacing:
                                                                                0.08,
                                                                            height:
                                                                                1.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 8,
                                                                        top: 18,
                                                                        bottom:
                                                                            17),
                                                                    child: Text(
                                                                        "lbl_reviewed"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtPlusJakartaSansMedium12.copyWith(
                                                                            letterSpacing:
                                                                                0.06,
                                                                            height:
                                                                                1.00)))
                                                              ])))
                                                ]))
                                      ]))),
                          Container(
                              height: getVerticalSize(2.00),
                              width: size.width,
                              margin: getMargin(top: 24),
                              decoration:
                                  BoxDecoration(color: ColorConstant.indigo50)),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: double.infinity,
                                  margin:
                                      getMargin(left: 24, top: 22, right: 24),
                                  decoration: AppDecoration.outlineIndigo50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 18,
                                                    right: 16),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2,
                                                              bottom: 2),
                                                          child: Text(
                                                              "lbl_about_me".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtInterRegular16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.08,
                                                                      height:
                                                                          1.00))),
                                                      CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgEdit,
                                                          height:
                                                              getSize(20.00),
                                                          width: getSize(20.00))
                                                    ]))),
                                        Container(
                                            width: getHorizontalSize(271.00),
                                            margin: getMargin(
                                                left: 16,
                                                top: 20,
                                                right: 16,
                                                bottom: 16),
                                            child: Text(
                                                "msg_lorem_ipsum_dol9".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14Bluegray400
                                                    .copyWith(
                                                        letterSpacing: 0.07,
                                                        height: 1.57)))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: double.infinity,
                                  margin:
                                      getMargin(left: 24, top: 24, right: 23),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(12.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: double.infinity,
                                                decoration: AppDecoration
                                                    .outlineIndigo50
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 18,
                                                                      right:
                                                                          16),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1,
                                                                            bottom:
                                                                                2),
                                                                        child: Text(
                                                                            "lbl_skills"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterRegular16.copyWith(letterSpacing: 0.08, height: 1.00))),
                                                                    CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgEdit,
                                                                        height: getSize(
                                                                            20.00),
                                                                        width: getSize(
                                                                            20.00))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 13,
                                                              right: 16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                CustomButton(
                                                                    width: 137,
                                                                    text:
                                                                        "msg_design_creati"
                                                                            .tr,
                                                                    variant:
                                                                        ButtonVariant
                                                                            .OutlineBluegray51,
                                                                    shape: ButtonShape
                                                                        .RoundedBorder24,
                                                                    padding:
                                                                        ButtonPadding
                                                                            .PaddingAll16,
                                                                    fontStyle:
                                                                        ButtonFontStyle
                                                                            .PlusJakartaSansSemiBold12Gray900),
                                                                CustomButton(
                                                                    width: 123,
                                                                    text:
                                                                        "lbl_wireframing_ux"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        left:
                                                                            12),
                                                                    variant:
                                                                        ButtonVariant
                                                                            .OutlineBluegray50,
                                                                    shape: ButtonShape
                                                                        .RoundedBorder24,
                                                                    padding:
                                                                        ButtonPadding
                                                                            .PaddingAll16,
                                                                    fontStyle:
                                                                        ButtonFontStyle
                                                                            .PlusJakartaSansSemiBold12Gray900)
                                                              ])),
                                                      Align(
                                                          alignment: Alignment
                                                              .center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 10,
                                                                      right: 9,
                                                                      bottom:
                                                                          33),
                                                              child: Obx(() => ListView
                                                                  .builder(
                                                                      physics:
                                                                          NeverScrollableScrollPhysics(),
                                                                      shrinkWrap:
                                                                          true,
                                                                      itemCount: controller
                                                                          .profileModelObj
                                                                          .value
                                                                          .listskillsOneItemList
                                                                          .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              index) {
                                                                        ListskillsOneItemModel model = controller
                                                                            .profileModelObj
                                                                            .value
                                                                            .listskillsOneItemList[index];
                                                                        return ListskillsOneItemWidget(
                                                                            model);
                                                                      }))))
                                                    ])))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: double.infinity,
                                  margin:
                                      getMargin(left: 24, top: 24, right: 24),
                                  decoration: AppDecoration.outlineIndigo50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 18, right: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 3),
                                                      child: Text(
                                                          "lbl_experience".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansBold18
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.09,
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 2),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgVolume,
                                                          height:
                                                              getSize(20.00),
                                                          width:
                                                              getSize(20.00)))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 23,
                                                right: 16,
                                                bottom: 15),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          235.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo50));
                                                },
                                                itemCount: controller
                                                    .profileModelObj
                                                    .value
                                                    .listuser2ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Listuser2ItemModel model =
                                                      controller
                                                              .profileModelObj
                                                              .value
                                                              .listuser2ItemList[
                                                          index];
                                                  return Listuser2ItemWidget(
                                                      model,
                                                      onTapImgUser:
                                                          onTapImgUser,
                                                      onTapBtntf: onTapBtntf);
                                                })))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: double.infinity,
                                  margin:
                                      getMargin(left: 24, top: 24, right: 24),
                                  decoration: AppDecoration.outlineBluegray50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 18,
                                                    right: 16),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_education"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansBold16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.08,
                                                                      height:
                                                                          1.00))),
                                                      CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgVolume,
                                                          height:
                                                              getSize(20.00),
                                                          width: getSize(20.00))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 25,
                                                right: 16,
                                                bottom: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgTrophy,
                                                      height: getSize(48.00),
                                                      width: getSize(48.00)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12,
                                                          top: 7,
                                                          bottom: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "msg_university_of_o"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPlusJakartaSansSemiBold14Gray900
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.07,
                                                                            height:
                                                                                1.00))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        152.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 10,
                                                                        bottom:
                                                                            2),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "msg_computer_scienc".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPlusJakartaSansMedium12.copyWith(letterSpacing: 0.06, height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPlusJakartaSansMedium12.copyWith(letterSpacing: 0.06, height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_2019".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPlusJakartaSansMedium12.copyWith(letterSpacing: 0.06, height: 1.00)))
                                                                    ]))
                                                          ]))
                                                ]))
                                      ])))
                        ]))),
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

  onTapImgUser() async {
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? fileList = [];
    FileManager().filePickerMethod(1000 * 1000, ['pdf', 'doc'],
        getFiles: (value) {
      fileList = value;
    });
  }

  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? fileList = [];
    FileManager().filePickerMethod(1000 * 1000, ['pdf', 'doc'],
        getFiles: (value) {
      fileList = value;
    });
  }

  onTapArrowleft11() {
    Get.back();
  }
}
