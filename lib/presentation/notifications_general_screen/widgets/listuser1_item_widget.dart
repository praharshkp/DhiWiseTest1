import '../controller/notifications_general_controller.dart';
import '../models/listuser1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listuser1ItemWidget extends StatelessWidget {
  Listuser1ItemWidget(this.listuser1ItemModelObj, {this.onTapBtntf});

  Listuser1ItemModel listuser1ItemModelObj;

  var controller = Get.find<NotificationsGeneralController>();

  VoidCallback? onTapBtntf;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          top: 16.0,
          bottom: 16.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomIconButton(
              height: 32,
              width: 32,
              margin: getMargin(
                bottom: 62,
              ),
              shape: IconButtonShape.CircleBorder16,
              padding: IconButtonPadding.PaddingAll4,
              onTap: () {
                onTapBtntf!();
              },
              child: CommonImageView(
                svgPath: ImageConstant.imgUser48X48,
              ),
            ),
            Container(
              height: getVerticalSize(
                94.00,
              ),
              width: getHorizontalSize(
                282.00,
              ),
              margin: getMargin(
                left: 12,
                right: 1,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: getPadding(
                        left: 10,
                        top: 6,
                        bottom: 10,
                      ),
                      child: Text(
                        "lbl_32_min_ago".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansMedium12Bluegray300
                            .copyWith(
                          letterSpacing: 0.06,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: getPadding(
                        top: 10,
                        right: 10,
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
                              "msg_junior_ui_desig".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansBold14.copyWith(
                                letterSpacing: 0.07,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 11,
                              right: 10,
                            ),
                            child: Text(
                              "lbl_shopee_sg".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtPlusJakartaSansMedium12.copyWith(
                                letterSpacing: 0.06,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              232.00,
                            ),
                            margin: getMargin(
                              top: 16,
                            ),
                            child: Text(
                              "msg_lorem_ipsum_dol5".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansMedium12Gray900
                                  .copyWith(
                                letterSpacing: 0.06,
                                height: 1.67,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
