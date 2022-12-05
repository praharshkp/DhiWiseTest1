import '../detail_job_screen/widgets/detail_job_item_widget.dart';
import 'controller/detail_job_controller.dart';
import 'models/detail_job_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

class DetailJobScreen extends GetWidget<DetailJobController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 16,
                leading: AppbarImage(
                    height: getVerticalSize(13.00),
                    width: getHorizontalSize(16.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(top: 2, bottom: 2),
                    onTap: onTapArrowleft6),
                actions: [AppbarTitle(text: "lbl_saved".tr)]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(688.00),
                        width: size.width,
                        margin: getMargin(top: 45),
                        child:
                            Stack(alignment: Alignment.bottomLeft, children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  width: getHorizontalSize(351.00),
                                  margin: getMargin(left: 10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: double.infinity,
                                            margin: getMargin(right: 10),
                                            decoration: AppDecoration
                                                .outlineIndigo50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 79,
                                                      width: 79,
                                                      margin: getMargin(
                                                          left: 73,
                                                          top: 24,
                                                          right: 73),
                                                      shape: IconButtonShape
                                                          .RoundedBorder39,
                                                      padding: IconButtonPadding
                                                          .PaddingAll18,
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgFilter)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 73,
                                                          top: 18,
                                                          right: 73),
                                                      child: Text(
                                                          "msg_senior_ui_ux_de"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansBold14Bluegray900
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.07,
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 73,
                                                          top: 11,
                                                          right: 73),
                                                      child: Text(
                                                          "lbl_shopee_sg".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansMedium12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.06,
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 73,
                                                          top: 14,
                                                          right: 72,
                                                          bottom: 24),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            CustomButton(
                                                                width: 69,
                                                                text:
                                                                    "lbl_fulltime"
                                                                        .tr,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .InterRegular12),
                                                            CustomButton(
                                                                width: 104,
                                                                text:
                                                                    "lbl_two_days_ago"
                                                                        .tr,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            9),
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .InterRegular12)
                                                          ]))
                                                ])),
                                        Container(
                                            height: getVerticalSize(126.00),
                                            width: getHorizontalSize(297.00),
                                            child: Obx(() => ListView.builder(
                                                padding: getPadding(
                                                    left: 15,
                                                    top: 24,
                                                    right: 15),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                physics:
                                                    BouncingScrollPhysics(),
                                                itemCount: controller
                                                    .detailJobModelObj
                                                    .value
                                                    .detailJobItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  DetailJobItemModel model =
                                                      controller
                                                              .detailJobModelObj
                                                              .value
                                                              .detailJobItemList[
                                                          index];
                                                  return DetailJobItemWidget(
                                                      model);
                                                }))),
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 18,
                                                          right: 17,
                                                          bottom: 13),
                                                      decoration: AppDecoration
                                                          .txtFillGray100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtCircleBorder22),
                                                      child: Text(
                                                          "lbl_description".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansSemiBold12Gray900
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.06,
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 18,
                                                          right: 17,
                                                          bottom: 13),
                                                      decoration: AppDecoration
                                                          .txtOutlineBluegray50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtCircleBorder22),
                                                      child: Text(
                                                          "lbl_requirement".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansSemiBold12Bluegray300
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.06,
                                                                  height:
                                                                      1.00))),
                                                  Container(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 17,
                                                          bottom: 14),
                                                      decoration: AppDecoration
                                                          .txtOutlineBluegray50
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtCircleBorder22),
                                                      child: Text(
                                                          "msg_responsibilitie"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPlusJakartaSansSemiBold12Bluegray300
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.06,
                                                                  height:
                                                                      1.00)))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 22, right: 10),
                                            child: Text(
                                                "lbl_job_description".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansBold16Bluegray900
                                                    .copyWith(
                                                        letterSpacing: 0.08,
                                                        height: 1.00))),
                                        Container(
                                            width: getHorizontalSize(319.00),
                                            margin: getMargin(
                                                left: 8, top: 19, right: 10),
                                            child: Text(
                                                "msg_lorem_ipsum_dol4".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14Gray600
                                                    .copyWith(
                                                        letterSpacing: 0.07,
                                                        height: 1.57)))
                                      ]))),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                  margin: getMargin(top: 10),
                                  decoration:
                                      AppDecoration.gradientGray50Gray5000,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomButton(
                                            width: 327,
                                            text: "lbl_apply_now".tr,
                                            margin: getMargin(
                                                left: 24,
                                                top: 28,
                                                right: 24,
                                                bottom: 40),
                                            variant: ButtonVariant.FillGray900,
                                            shape: ButtonShape.RoundedBorder24,
                                            padding: ButtonPadding.PaddingAll20,
                                            fontStyle: ButtonFontStyle
                                                .PlusJakartaSansSemiBold16)
                                      ])))
                        ]))))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
