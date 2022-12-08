import '../controller/detail_job_controller.dart';
import '../models/detail_job_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class DetailJobItemWidget extends StatelessWidget {
  DetailJobItemWidget(this.detailJobItemModelObj);

  DetailJobItemModel detailJobItemModelObj;

  var controller = Get.find<DetailJobController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          bottom: 3,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 48,
              width: 48,
              margin: getMargin(
                left: 9,
                right: 7,
              ),
              variant: IconButtonVariant.FillTealA70065,
              shape: IconButtonShape.CircleBorder24,
              padding: IconButtonPadding.PaddingAll13,
              child: CommonImageView(
                svgPath: ImageConstant.imgClock48X48,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 15,
                top: 11,
                right: 13,
              ),
              child: Text(
                "lbl_salary".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPlusJakartaSansMedium12Bluegray300.copyWith(
                  letterSpacing: 0.06,
                  height: 1.00,
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "lbl_6k_11k".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPlusJakartaSansSemiBold14Gray900.copyWith(
                    letterSpacing: 0.07,
                    height: 1.00,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
