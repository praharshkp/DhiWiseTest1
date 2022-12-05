import '../controller/profile_controller.dart';
import '../models/listuser2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listuser2ItemWidget extends StatelessWidget {
  Listuser2ItemWidget(this.listuser2ItemModelObj,
      {this.onTapImgUser, this.onTapBtntf});

  Listuser2ItemModel listuser2ItemModelObj;

  var controller = Get.find<ProfileController>();

  VoidCallback? onTapImgUser;

  VoidCallback? onTapBtntf;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        64.00,
      ),
      width: getHorizontalSize(
        295.00,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getPadding(
                left: 8,
                top: 8,
                right: 10,
                bottom: 10,
              ),
              child: InkWell(
                onTap: () {
                  onTapImgUser!();
                },
                child: CommonImageView(
                  svgPath: ImageConstant.imgUser48X48,
                  height: getSize(
                    32.00,
                  ),
                  width: getSize(
                    32.00,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: getPadding(
                right: 10,
                bottom: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomIconButton(
                    height: 48,
                    width: 48,
                    onTap: () {
                      onTapBtntf!();
                    },
                    child: CommonImageView(
                      svgPath: ImageConstant.imgUser48X48,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      top: 7,
                      right: 2,
                      bottom: 3,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "msg_internship_ui_u".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPlusJakartaSansSemiBold14Gray900
                              .copyWith(
                            letterSpacing: 0.07,
                            height: 1.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 10,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 1,
                                ),
                                child: Text(
                                  "lbl_shopee_sg".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansMedium12
                                      .copyWith(
                                    letterSpacing: 0.06,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 3,
                                  top: 1,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansMedium12
                                      .copyWith(
                                    letterSpacing: 0.06,
                                    height: 1.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 4,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "lbl_2019".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansMedium12
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
