import 'controller/confirmation_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ConfirmationDialog extends StatelessWidget {
  ConfirmationDialog(this.controller);

  ConfirmationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: double.infinity,
              decoration: AppDecoration.fillWhiteA703.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: getHorizontalSize(
                      283.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 46,
                      right: 24,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_i_agree_to_the".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray400,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.08,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_terms_of_servic".tr,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.08,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "lbl_and".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray400,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.08,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_conditions_of_u".tr,
                            style: TextStyle(
                              color: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.08,
                              height: 1.50,
                            ),
                          ),
                          TextSpan(
                            text: "msg_including_conse".tr,
                            style: TextStyle(
                              color: ColorConstant.bluegray400,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.08,
                              height: 1.50,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  CustomButton(
                    width: 181,
                    text: "msg_agree_and_conti".tr,
                    margin: getMargin(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    variant: ButtonVariant.FillGray900,
                    shape: ButtonShape.RoundedBorder20,
                    padding: ButtonPadding.PaddingAll16,
                    fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold14,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 30,
                      right: 24,
                      bottom: 20,
                    ),
                    child: Text(
                      "lbl_disgree".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style:
                          AppStyle.txtPlusJakartaSansSemiBold14RedA200.copyWith(
                        letterSpacing: 0.07,
                        height: 1.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
