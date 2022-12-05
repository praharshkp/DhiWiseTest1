import '../controller/notifications_my_proposals_controller.dart';
import '../models/listlocation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListlocationItemWidget extends StatelessWidget {
  ListlocationItemWidget(this.listlocationItemModelObj);

  ListlocationItemModel listlocationItemModelObj;

  var controller = Get.find<NotificationsMyProposalsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 16.5,
        bottom: 16.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 48,
            width: 48,
            margin: getMargin(
              bottom: 42,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgLocation,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      top: 6,
                      right: 1,
                    ),
                    child: Text(
                      "msg_senior_ui_ux_de".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPlusJakartaSansBold14.copyWith(
                        letterSpacing: 0.07,
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_shell".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPlusJakartaSansSemiBold12Bluegray300
                        .copyWith(
                      letterSpacing: 0.06,
                      height: 1.00,
                    ),
                  ),
                ),
                CustomButton(
                  width: 78,
                  text: "lbl_opened".tr,
                  margin: getMargin(
                    top: 19,
                    right: 10,
                  ),
                  variant: ButtonVariant.FillGreen50,
                  shape: ButtonShape.RoundedBorder4,
                  fontStyle: ButtonFontStyle.InterRegular12GreenA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
