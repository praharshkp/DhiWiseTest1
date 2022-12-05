import '../notifications_my_proposals_screen/widgets/listlocation_item_widget.dart';
import 'controller/notifications_my_proposals_controller.dart';
import 'models/listlocation_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';

class NotificationsMyProposalsScreen
    extends GetWidget<NotificationsMyProposalsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA702,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 16,
                leading: AppbarImage(
                    height: getVerticalSize(13.00),
                    width: getHorizontalSize(16.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(top: 3, bottom: 3),
                    onTap: onTapArrowleft10),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_notifications".tr),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(19.00),
                      svgPath: ImageConstant.imgSettings20X19)
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Padding(
                          padding: getPadding(left: 24, top: 44, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomButton(
                                    width: 79,
                                    text: "lbl_general".tr,
                                    variant: ButtonVariant.OutlineIndigo50,
                                    shape: ButtonShape.RoundedBorder12,
                                    padding: ButtonPadding.PaddingAll16,
                                    fontStyle: ButtonFontStyle
                                        .PlusJakartaSansSemiBold12Gray600),
                                CustomButton(
                                    width: 111,
                                    text: "lbl_my_proposals".tr,
                                    margin: getMargin(left: 12),
                                    variant: ButtonVariant.FillGray900,
                                    shape: ButtonShape.RoundedBorder12,
                                    padding: ButtonPadding.PaddingAll16,
                                    fontStyle: ButtonFontStyle
                                        .PlusJakartaSansSemiBold12Gray50)
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 30, right: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("msg_application_sta".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPlusJakartaSansBold16
                                            .copyWith(
                                                letterSpacing: 0.08,
                                                height: 1.00)),
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 7),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgArrowupGray900,
                                            height: getVerticalSize(7.00),
                                            width: getHorizontalSize(14.00)))
                                  ]))),
                      Padding(
                          padding: getPadding(
                              left: 24, top: 25, right: 24, bottom: 236),
                          child: Obx(() => ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(327.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.indigo50));
                              },
                              itemCount: controller
                                  .notificationsMyProposalsModelObj
                                  .value
                                  .listlocationItemList
                                  .length,
                              itemBuilder: (context, index) {
                                ListlocationItemModel model = controller
                                    .notificationsMyProposalsModelObj
                                    .value
                                    .listlocationItemList[index];
                                return ListlocationItemWidget(model);
                              })))
                    ])))));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
