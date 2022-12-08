import '../message_screen/widgets/message_item_widget.dart';
import 'controller/message_controller.dart';
import 'models/message_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_bottom_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_search_view.dart';

class MessageScreen extends GetWidget<MessageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA702,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, right: 24),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomAppBar(
                                  height: getVerticalSize(56.00),
                                  leadingWidth: 16,
                                  leading: AppbarImage(
                                      height: getVerticalSize(13.00),
                                      width: getHorizontalSize(16.00),
                                      svgPath: ImageConstant.imgArrowleft,
                                      margin: getMargin(bottom: 5),
                                      onTap: onTapArrowleft2),
                                  title: AppbarTitle(
                                      text: "lbl_message".tr,
                                      margin: getMargin(left: 103))),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 43),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(24.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomSearchView(
                                            width: 327,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameOneController,
                                            hintText: "msg_search_message".tr,
                                            alignment: Alignment.centerLeft,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 17,
                                                    top: 18,
                                                    right: 9,
                                                    bottom: 17),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearch)),
                                            prefixConstraints: BoxConstraints(
                                                minWidth: getSize(15.00),
                                                minHeight: getSize(15.00)),
                                            suffix: Padding(
                                                padding: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                        15.00)),
                                                child: IconButton(
                                                    onPressed: () {
                                                      controller
                                                          .frameOneController
                                                          .clear;
                                                    },
                                                    icon: Icon(Icons.clear,
                                                        color: Colors
                                                            .grey.shade600))),
                                            suffixConstraints: BoxConstraints(
                                                minWidth:
                                                    getHorizontalSize(23.00),
                                                minHeight:
                                                    getVerticalSize(18.00)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 24),
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
                                      itemCount: controller.messageModelObj
                                          .value.messageItemList.length,
                                      itemBuilder: (context, index) {
                                        MessageItemModel model = controller
                                            .messageModelObj
                                            .value
                                            .messageItemList[index];
                                        return MessageItemWidget(model);
                                      }))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      margin: getMargin(left: 10, top: 134),
                                      decoration: AppDecoration.fillGray900
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 17, bottom: 17),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgPlus12X12,
                                                    height: getSize(12.00),
                                                    width: getSize(12.00))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 7,
                                                    top: 16,
                                                    right: 24,
                                                    bottom: 15),
                                                child: Text("lbl_new_chat".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPlusJakartaSansSemiBold14
                                                        .copyWith(
                                                            letterSpacing: 0.07,
                                                            height: 1.00)))
                                          ])))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Message:
        return getDefaultWidget();
      case BottomBarEnum.Saved:
        return getDefaultWidget();
      case BottomBarEnum.Profil:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }

  onTapArrowleft2() {
    Get.back();
  }
}
