import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class SettingsDialog extends StatelessWidget {
  SettingsDialog(this.controller);

  SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: getPadding(left: 32, top: 41, right: 32),
                  child: CommonImageView(
                      svgPath: ImageConstant.imgQuestion82X82,
                      height: getSize(82.00),
                      width: getSize(82.00))),
              Padding(
                  padding: getPadding(left: 32, top: 37, right: 32),
                  child: Text("lbl_are_you_sure".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPlusJakartaSansBold18
                          .copyWith(letterSpacing: 0.09, height: 1.00))),
              Container(
                  width: getHorizontalSize(228.00),
                  margin: getMargin(left: 32, top: 14, right: 32),
                  child: Text("msg_ullamcorper_imp".tr,
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtPlusJakartaSansSemiBold14Bluegray400
                          .copyWith(letterSpacing: 0.07, height: 1.57))),
              Padding(
                  padding: getPadding(left: 32, top: 28, right: 32, bottom: 32),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomButton(
                            width: 115,
                            text: "lbl_log_out2".tr,
                            variant: ButtonVariant.OutlineGray900,
                            shape: ButtonShape.RoundedBorder20,
                            padding: ButtonPadding.PaddingAll16,
                            fontStyle: ButtonFontStyle
                                .PlusJakartaSansSemiBold14Gray900),
                        CustomButton(
                            width: 115,
                            text: "lbl_cancel".tr,
                            margin: getMargin(left: 12),
                            variant: ButtonVariant.FillGray900,
                            shape: ButtonShape.RoundedBorder20,
                            padding: ButtonPadding.PaddingAll16,
                            fontStyle:
                                ButtonFontStyle.PlusJakartaSansSemiBold14,
                            onTap: onTapCancel)
                      ]))
            ]));
  }

  onTapCancel() {
    Get.back();
  }
}
