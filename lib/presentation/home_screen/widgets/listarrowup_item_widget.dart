import '../controller/home_controller.dart';
import '../models/listarrowup_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListarrowupItemWidget extends StatelessWidget {
  ListarrowupItemWidget(this.listarrowupItemModelObj);

  ListarrowupItemModel listarrowupItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineIndigo50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 16,
              right: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomIconButton(
                        height: 48,
                        width: 48,
                        child: CommonImageView(
                          svgPath: ImageConstant.imgArrowup,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 12,
                          top: 5,
                          bottom: 4,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "msg_digital_marketi".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansBold16.copyWith(
                                letterSpacing: 0.08,
                                height: 1.00,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 9,
                                right: 10,
                              ),
                              child: Text(
                                "lbl_motorola".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtPlusJakartaSansSemiBold12Bluegray300
                                    .copyWith(
                                  letterSpacing: 0.06,
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                    bottom: 26,
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
          ),
          Container(
            width: getHorizontalSize(
              181.00,
            ),
            margin: getMargin(
              left: 16,
              top: 11,
              right: 16,
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
        ],
      ),
    );
  }
}
