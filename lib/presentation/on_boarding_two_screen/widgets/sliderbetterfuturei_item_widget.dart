import '../controller/on_boarding_two_controller.dart';
import '../models/sliderbetterfuturei_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';

// ignore: must_be_immutable
class SliderbetterfutureiItemWidget extends StatelessWidget {
  SliderbetterfutureiItemWidget(this.sliderbetterfutureiItemModelObj);

  SliderbetterfutureiItemModel sliderbetterfutureiItemModelObj;

  var controller = Get.find<OnBoardingTwoController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: getHorizontalSize(
                273.00,
              ),
              margin: getMargin(
                left: 30,
                top: 39,
                right: 24,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_better".tr,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.12,
                        height: 1.33,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_future".tr,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.12,
                        height: 1.33,
                      ),
                    ),
                    TextSpan(
                      text: "msg_is_starting_fro".tr,
                      style: TextStyle(
                        color: ColorConstant.gray900,
                        fontSize: getFontSize(
                          24,
                        ),
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.12,
                        height: 1.33,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: getHorizontalSize(
                242.00,
              ),
              margin: getMargin(
                left: 30,
                top: 23,
                right: 30,
              ),
              child: Text(
                "msg_semper_in_cursu".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style:
                    AppStyle.txtPlusJakartaSansSemiBold14Bluegray300.copyWith(
                  letterSpacing: 0.07,
                  height: 1.57,
                ),
              ),
            ),
            CustomButton(
              width: 101,
              text: "lbl_next".tr,
              margin: getMargin(
                left: 30,
                top: 72,
                right: 30,
                bottom: 20,
              ),
              variant: ButtonVariant.FillGray900,
              shape: ButtonShape.RoundedBorder24,
              padding: ButtonPadding.PaddingAll20,
              fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16,
            ),
          ],
        ),
      ),
    );
  }
}
