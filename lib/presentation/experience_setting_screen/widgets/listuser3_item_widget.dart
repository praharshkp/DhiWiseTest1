import '../controller/experience_setting_controller.dart';
import '../models/listuser3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listuser3ItemWidget extends StatelessWidget {
  Listuser3ItemWidget(this.listuser3ItemModelObj, {this.onTapBtntf});

  Listuser3ItemModel listuser3ItemModelObj;

  var controller = Get.find<ExperienceSettingController>();

  VoidCallback? onTapBtntf;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 19.5,
        bottom: 19.5,
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
                  style: AppStyle.txtPlusJakartaSansSemiBold14Gray900.copyWith(
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
                          style: AppStyle.txtPlusJakartaSansMedium12.copyWith(
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
                          style: AppStyle.txtPlusJakartaSansMedium12.copyWith(
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
                          style: AppStyle.txtPlusJakartaSansMedium12.copyWith(
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
    );
  }
}
