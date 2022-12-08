import '../controller/search_controller.dart';
import '../models/search_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  SearchItemModel searchItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 6.0,
        bottom: 6.0,
      ),
      decoration: AppDecoration.outlineIndigo50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 48,
            width: 48,
            margin: getMargin(
              left: 16,
              top: 16,
              bottom: 84,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgLocation,
            ),
          ),
          Container(
            margin: getMargin(
              left: 12,
              top: 16,
              bottom: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    top: 6,
                    right: 10,
                  ),
                  child: Text(
                    "msg_senior_ui_ux_de".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPlusJakartaSansBold16.copyWith(
                      letterSpacing: 0.08,
                      height: 1.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 9,
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
                Padding(
                  padding: getPadding(
                    top: 16,
                    right: 10,
                  ),
                  child: Text(
                    "msg_560_12_000".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPlusJakartaSansMedium12Gray600.copyWith(
                      letterSpacing: 0.06,
                      height: 1.00,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    181.00,
                  ),
                  margin: getMargin(
                    top: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        8.00,
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomButton(
                        width: 70,
                        text: "lbl_fulltime".tr,
                      ),
                      CustomButton(
                        width: 103,
                        text: "lbl_two_days_ago".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 33,
              top: 18,
              right: 19,
              bottom: 109,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgBookmark,
              height: getVerticalSize(
                20.00,
              ),
              width: getHorizontalSize(
                17.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
