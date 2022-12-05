import 'controller/sign_in_complet_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_drop_down.dart';
import 'package:praharsh_s_application1/widgets/custom_text_form_field.dart';

class SignInCompletAccountScreen
    extends GetWidget<SignInCompletAccountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA702,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Padding(
                          padding: getPadding(left: 27, top: 18, right: 27),
                          child: InkWell(
                              onTap: () {
                                onTapImgArrowleft();
                              },
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: getVerticalSize(13.00),
                                  width: getHorizontalSize(16.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 55, right: 24),
                              child: Text("msg_complet_your_ac".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold24
                                      .copyWith(
                                          letterSpacing: 0.12, height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 14, right: 24),
                              child: Text("msg_lorem_ipsum_dol6".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Bluegray400
                                      .copyWith(
                                          letterSpacing: 0.07, height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 37, right: 24),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(8.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(right: 10),
                                        child: Text("lbl_first_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansMedium14Bluegray900
                                                .copyWith(
                                                    letterSpacing: 0.07,
                                                    height: 1.00))),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.frameOneController,
                                        hintText: "msg_enter_your_firs".tr,
                                        margin: getMargin(top: 11))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 20, right: 24),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(8.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(right: 10),
                                        child: Text("lbl_last_name".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansMedium14Bluegray900
                                                .copyWith(
                                                    letterSpacing: 0.07,
                                                    height: 1.00))),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.frameOneOneController,
                                        hintText: "msg_enter_your_last".tr,
                                        margin: getMargin(top: 11))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 20, right: 24),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(8.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(right: 10),
                                        child: Text("lbl_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansMedium14Bluegray900
                                                .copyWith(
                                                    letterSpacing: 0.07,
                                                    height: 1.00))),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.frameOneTwoController,
                                        hintText: "msg_create_a_passwo".tr,
                                        margin: getMargin(top: 11),
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30,
                                                top: 17,
                                                right: 18,
                                                bottom: 17),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmark)),
                                        suffixConstraints: BoxConstraints(
                                            minWidth: getHorizontalSize(20.00),
                                            minHeight: getVerticalSize(17.00)))
                                  ]))),
                      CustomDropDown(
                          width: 327,
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 20),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowdownGray900)),
                          hintText: "msg_select_a_countr2".tr,
                          margin: getMargin(left: 24, top: 16, right: 24),
                          alignment: Alignment.center,
                          items: controller.signInCompletAccountModelObj.value
                              .dropdownItemList,
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      CustomButton(
                          width: 327,
                          text: "msg_continue_with_e".tr,
                          margin: getMargin(left: 24, top: 40, right: 24),
                          variant: ButtonVariant.FillGray900,
                          shape: ButtonShape.RoundedBorder24,
                          padding: ButtonPadding.PaddingAll20,
                          fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(245.00),
                              margin: getMargin(left: 24, top: 30, right: 24),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(8.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("msg_already_have_an".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold16
                                                .copyWith(
                                                    letterSpacing: 0.08,
                                                    height: 1.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(243.00),
                              margin: getMargin(
                                  left: 24, top: 24, right: 24, bottom: 20),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_by_signing_up_y2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.bluegray400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.07,
                                            height: 1.57)),
                                    TextSpan(
                                        text: "lbl_terms".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray901,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.07,
                                            height: 1.57)),
                                    TextSpan(
                                        text: "lbl_and".tr,
                                        style: TextStyle(
                                            color: ColorConstant.bluegray400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.07,
                                            height: 1.57)),
                                    TextSpan(
                                        text: "msg_conditions_of_u".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray901,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.07,
                                            height: 1.57))
                                  ]),
                                  textAlign: TextAlign.center)))
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
