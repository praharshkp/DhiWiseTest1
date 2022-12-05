import '../language_screen/widgets/listchineses_item_widget.dart';
import '../language_screen/widgets/listlanguage_one_item_widget.dart';
import 'controller/language_controller.dart';
import 'models/listchineses_item_model.dart';
import 'models/listlanguage_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';

class LanguageScreen extends GetWidget<LanguageController> {
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
                    onTap: onTapArrowleft18),
                title: AppbarTitle(
                    text: "lbl_language".tr, margin: getMargin(left: 99))),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 43, right: 24),
                              decoration: AppDecoration.outlineIndigo50
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 25, right: 16),
                                        child: Text("msg_suggested_langu".tr,
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
                                                left: 16,
                                                top: 18,
                                                right: 16,
                                                bottom: 23),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return Container(
                                                      height:
                                                          getVerticalSize(0.02),
                                                      width: getHorizontalSize(
                                                          295.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo50));
                                                },
                                                itemCount: controller
                                                    .languageModelObj
                                                    .value
                                                    .listlanguageOneItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListlanguageOneItemModel
                                                      model = controller
                                                              .languageModelObj
                                                              .value
                                                              .listlanguageOneItemList[
                                                          index];
                                                  return ListlanguageOneItemWidget(
                                                      model);
                                                }))))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                  left: 24, top: 24, right: 24, bottom: 20),
                              decoration: AppDecoration.outlineIndigo50
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder12),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 16, top: 21, right: 16),
                                        child: Text("lbl_other_languages".tr,
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
                                                left: 16, top: 24, right: 16),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return Container(
                                                      height:
                                                          getVerticalSize(0.02),
                                                      width: getHorizontalSize(
                                                          295.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo50));
                                                },
                                                itemCount: controller
                                                    .languageModelObj
                                                    .value
                                                    .listchinesesItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListchinesesItemModel model =
                                                      controller
                                                              .languageModelObj
                                                              .value
                                                              .listchinesesItemList[
                                                          index];
                                                  return ListchinesesItemWidget(
                                                      model);
                                                }))))
                                  ])))
                    ])))));
  }

  onTapArrowleft18() {
    Get.back();
  }
}
