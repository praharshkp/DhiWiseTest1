import 'controller/privacy_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';

class PrivacyScreen extends GetWidget<PrivacyController> {
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
                    onTap: onTapArrowleft17),
                title: AppbarTitle(
                    text: "msg_legel_and_polic".tr,
                    margin: getMargin(left: 64))),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 47, right: 24),
                          child: Text("lbl_terms".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansBold16.copyWith(
                                  letterSpacing: 0.08, height: 1.00))),
                      Container(
                          width: getHorizontalSize(306.00),
                          margin: getMargin(left: 24, top: 17, right: 24),
                          child: Text("msg_lorem_ipsum_dol8".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray40087
                                  .copyWith(
                                      letterSpacing: 0.07, height: 1.57))),
                      Container(
                          width: getHorizontalSize(308.00),
                          margin: getMargin(left: 24, top: 11, right: 24),
                          child: Text("msg_lorem_ipsum_dol8".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray40087
                                  .copyWith(
                                      letterSpacing: 0.07, height: 1.57))),
                      Padding(
                          padding: getPadding(left: 24, top: 27, right: 24),
                          child: Text("msg_changes_to_the".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansBold16.copyWith(
                                  letterSpacing: 0.08, height: 1.00))),
                      Container(
                          width: getHorizontalSize(306.00),
                          margin: getMargin(left: 24, top: 13, right: 24),
                          child: Text("msg_lorem_ipsum_dol8".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray40087
                                  .copyWith(
                                      letterSpacing: 0.07, height: 1.57))),
                      Container(
                          width: getHorizontalSize(308.00),
                          margin:
                              getMargin(left: 24, top: 6, right: 24, bottom: 3),
                          child: Text("msg_lorem_ipsum_dol8".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlusJakartaSansMedium14Bluegray40087
                                  .copyWith(letterSpacing: 0.07, height: 1.57)))
                    ])))));
  }

  onTapArrowleft17() {
    Get.back();
  }
}
