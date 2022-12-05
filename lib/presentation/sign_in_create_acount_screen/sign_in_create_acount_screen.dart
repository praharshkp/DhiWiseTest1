import 'controller/sign_in_create_acount_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_text_form_field.dart';
import 'package:praharsh_s_application1/domain/googleauth/google_auth_helper.dart';

class SignInCreateAcountScreen extends GetWidget<SignInCreateAcountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA701,
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
                              padding: getPadding(left: 24, top: 53, right: 24),
                              child: Text("lbl_create_account".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold24
                                      .copyWith(
                                          letterSpacing: 0.12, height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 17, right: 24),
                              child: Text("msg_lorem_ipsum_dol6".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansMedium16
                                      .copyWith(
                                          letterSpacing: 0.08, height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapLabel();
                              },
                              child: Container(
                                  margin:
                                      getMargin(left: 24, top: 30, right: 24),
                                  decoration: AppDecoration.outlineGray900
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 16, bottom: 15),
                                            child: InkWell(
                                                onTap: () {
                                                  onTapImgGoogle();
                                                },
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgGoogle,
                                                    height: getSize(24.00),
                                                    width: getSize(24.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 22, bottom: 17),
                                            child: Text(
                                                "msg_continue_with_g".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold16
                                                    .copyWith(
                                                        letterSpacing: 0.08,
                                                        height: 1.00)))
                                      ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 24, top: 16, right: 24),
                              decoration: AppDecoration.outlineGray900.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(top: 16, bottom: 16),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgFire,
                                            height: getVerticalSize(24.00),
                                            width: getHorizontalSize(19.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 14, top: 22, bottom: 17),
                                        child: Text("msg_continue_with_a".tr,
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
                          child: Padding(
                              padding: getPadding(left: 24, top: 28, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(62.00),
                                        margin: getMargin(top: 6, bottom: 6),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.indigo50)),
                                    Padding(
                                        padding: getPadding(left: 12),
                                        child: Text("msg_or_continue_wit".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold14Bluegray300
                                                .copyWith(
                                                    letterSpacing: 0.07,
                                                    height: 1.00))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(62.00),
                                        margin: getMargin(
                                            left: 14, top: 6, bottom: 6),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.indigo50))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 24, top: 32, right: 24),
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
                                        child: Text("lbl_email".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansMedium14
                                                .copyWith(
                                                    letterSpacing: 0.07,
                                                    height: 1.00))),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.frameOneController,
                                        hintText: "msg_enter_your_emai".tr,
                                        margin: getMargin(top: 11),
                                        textInputAction: TextInputAction.done)
                                  ]))),
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
                                  left: 24, top: 89, right: 24, bottom: 20),
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

  onTapLabel() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
