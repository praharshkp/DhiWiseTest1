import '../controller/profile_controller.dart';
import '../models/listskills_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListskillsOneItemWidget extends StatelessWidget {
  ListskillsOneItemWidget(this.listskillsOneItemModelObj);

  ListskillsOneItemModel listskillsOneItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 5.0,
          bottom: 5.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: getPadding(
                left: 28,
                top: 18,
                right: 28,
                bottom: 13,
              ),
              decoration: AppDecoration.txtOutlineBluegray50.copyWith(
                borderRadius: BorderRadiusStyle.txtCircleBorder22,
              ),
              child: Text(
                "lbl_figma".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPlusJakartaSansSemiBold12Gray900.copyWith(
                  letterSpacing: 0.06,
                  height: 1.00,
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 11,
              ),
              padding: getPadding(
                left: 21,
                top: 18,
                right: 21,
                bottom: 13,
              ),
              decoration: AppDecoration.txtOutlineBluegray50.copyWith(
                borderRadius: BorderRadiusStyle.txtCircleBorder22,
              ),
              child: Text(
                "lbl_ui_design".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPlusJakartaSansSemiBold12Gray900.copyWith(
                  letterSpacing: 0.06,
                  height: 1.00,
                ),
              ),
            ),
            Container(
              margin: getMargin(
                left: 8,
              ),
              padding: getPadding(
                left: 16,
                top: 18,
                right: 16,
                bottom: 12,
              ),
              decoration: AppDecoration.txtOutlineBluegray50.copyWith(
                borderRadius: BorderRadiusStyle.txtCircleBorder22,
              ),
              child: Text(
                "lbl_prototype".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPlusJakartaSansSemiBold12Gray900.copyWith(
                  letterSpacing: 0.06,
                  height: 1.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
