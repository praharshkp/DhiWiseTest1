import '../controller/notifications_controller.dart';
import '../models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_switch.dart';

// ignore: must_be_immutable
class NotificationsItemWidget extends StatelessWidget {
  NotificationsItemWidget(this.notificationsItemModelObj);

  NotificationsItemModel notificationsItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            11.93,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 4,
              bottom: 3,
            ),
            child: Text(
              "lbl_new_post".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular16.copyWith(
                letterSpacing: 0.12,
              ),
            ),
          ),
          Obx(
            () => CustomSwitch(
              margin: getMargin(
                left: 177,
              ),
              value: controller.isSelectedSwitch.value,
              onChanged: (value) {
                controller.isSelectedSwitch.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
