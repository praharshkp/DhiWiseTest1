import 'controller/enter_otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';

class EnterOtpScreen extends GetWidget<EnterOtpController> {
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 27, top: 18, right: 27),
                              child: InkWell(
                                  onTap: () {
                                    onTapImgArrowleft();
                                  },
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgArrowleft,
                                      height: getVerticalSize(13.00),
                                      width: getHorizontalSize(16.00))))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 53, right: 24),
                              child: Text("lbl_enter_otp".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold24
                                      .copyWith(
                                          letterSpacing: 0.12, height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(280.00),
                              margin: getMargin(left: 24, top: 17, right: 24),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_we_have_just_se2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.bluegray400,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.07,
                                            height: 1.57)),
                                    TextSpan(
                                        text: "msg_example_gmail_c".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(14),
                                            fontFamily: 'Plus Jakarta Sans',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.07,
                                            height: 1.57))
                                  ]),
                                  textAlign: TextAlign.center))),
                      Padding(
                          padding: getPadding(left: 24, top: 40, right: 24),
                          child: Container(
                              width: getHorizontalSize(296.00),
                              height: getVerticalSize(56.00),
                              child: Obx(() => PinCodeTextField(
                                  appContext: context,
                                  controller: controller.otpController.value,
                                  length: 4,
                                  obscureText: false,
                                  obscuringCharacter: '*',
                                  keyboardType: TextInputType.number,
                                  autoDismissKeyboard: true,
                                  enableActiveFill: true,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  onChanged: (value) {},
                                  textStyle: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(24),
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.12,
                                      height: 1.00),
                                  pinTheme: PinTheme(
                                      fieldHeight: getHorizontalSize(56.00),
                                      fieldWidth: getHorizontalSize(56.00),
                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(24.00)),
                                      selectedFillColor:
                                          ColorConstant.whiteA700,
                                      activeFillColor: ColorConstant.whiteA700,
                                      inactiveFillColor:
                                          ColorConstant.whiteA700,
                                      inactiveColor: ColorConstant.indigo50,
                                      selectedColor: ColorConstant.indigo50,
                                      activeColor: ColorConstant.indigo50))))),
                      CustomButton(
                          width: 327,
                          text: "lbl_continue".tr,
                          margin: getMargin(left: 24, top: 40, right: 24),
                          variant: ButtonVariant.FillGray900,
                          shape: ButtonShape.RoundedBorder24,
                          padding: ButtonPadding.PaddingAll20,
                          fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(
                                  left: 24, top: 29, right: 24, bottom: 20),
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
                                        child: Text("msg_didn_t_receive".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPlusJakartaSansSemiBold16
                                                .copyWith(
                                                    letterSpacing: 0.08,
                                                    height: 1.00)))
                                  ])))
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
