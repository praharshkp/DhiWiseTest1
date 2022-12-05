import '../notifications_screen/widgets/notifications_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notifications_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 16,
                leading: AppbarImage(
                    height: getVerticalSize(13.00),
                    width: getHorizontalSize(16.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(top: 2, bottom: 2),
                    onTap: onTapArrowleft19),
                title: AppbarTitle(
                    text: "lbl_notifications".tr, margin: getMargin(left: 86))),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(
                            left: 24, top: 45, right: 24, bottom: 391),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(
                                      left: 16, top: 19, right: 16, bottom: 16),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(130.63))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text(
                                                "msg_messages_notifi".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium12)),
                                        Container(
                                            margin: getMargin(top: 19),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            113.69))),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          295.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo50));
                                                },
                                                itemCount: controller
                                                    .notificationsModelObj
                                                    .value
                                                    .notificationsItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  NotificationsItemModel model =
                                                      controller
                                                          .notificationsModelObj
                                                          .value
                                                          .notificationsItemList[index];
                                                  return NotificationsItemWidget(
                                                      model);
                                                })))
                                      ]))
                            ]))))));
  }

  onTapArrowleft19() {
    Get.back();
  }
}
