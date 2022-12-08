import '../experience_setting_screen/widgets/listuser3_item_widget.dart';
import 'controller/experience_setting_controller.dart';
import 'models/listuser3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';

class ExperienceSettingScreen extends GetWidget<ExperienceSettingController> {
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
                    margin: getMargin(bottom: 6),
                    onTap: onTapArrowleft14),
                title: AppbarTitle(
                    text: "lbl_experience".tr, margin: getMargin(left: 93))),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 42),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.infinity,
                                  decoration: AppDecoration.outlineIndigo50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 19,
                                                    right: 16),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3),
                                                          child: Text(
                                                              "lbl_experience"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansBold18
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.09,
                                                                      height:
                                                                          1.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgVolume,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00)))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(all: 16),
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
                                                    .experienceSettingModelObj
                                                    .value
                                                    .listuser3ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Listuser3ItemModel model = controller
                                                      .experienceSettingModelObj
                                                      .value
                                                      .listuser3ItemList[index];
                                                  return Listuser3ItemWidget(
                                                      model,
                                                      onTapBtntf: onTapBtntf);
                                                })))
                                      ])),
                              CustomButton(
                                  width: 327,
                                  text: "msg_add_new_positio".tr,
                                  margin: getMargin(top: 37),
                                  variant: ButtonVariant.FillGray900,
                                  shape: ButtonShape.RoundedBorder24,
                                  padding: ButtonPadding.PaddingAll20,
                                  fontStyle: ButtonFontStyle
                                      .PlusJakartaSansSemiBold16),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 32),
                                  decoration: AppDecoration.outlineBluegray50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 18,
                                                    right: 16),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 3,
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_education"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansBold16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.08,
                                                                      height:
                                                                          1.00))),
                                                      CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgVolume,
                                                          height:
                                                              getSize(20.00),
                                                          width: getSize(20.00))
                                                    ]))),
                                        Padding(
                                            padding: getPadding(
                                                left: 16,
                                                top: 25,
                                                right: 16,
                                                bottom: 16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgTrophy48X48,
                                                      height: getSize(48.00),
                                                      width: getSize(48.00)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12,
                                                          top: 7,
                                                          bottom: 1),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        right:
                                                                            10),
                                                                child: Text(
                                                                    "msg_university_of_o"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPlusJakartaSansSemiBold14Gray900
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.07,
                                                                            height:
                                                                                1.00))),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        152.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 10,
                                                                        bottom:
                                                                            2),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: Text(
                                                                              "msg_computer_scienc".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPlusJakartaSansMedium12.copyWith(letterSpacing: 0.06, height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1,
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPlusJakartaSansMedium12.copyWith(letterSpacing: 0.06, height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              bottom:
                                                                                  1),
                                                                          child: Text(
                                                                              "lbl_2019".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPlusJakartaSansMedium12.copyWith(letterSpacing: 0.06, height: 1.00)))
                                                                    ]))
                                                          ]))
                                                ]))
                                      ])),
                              CustomButton(
                                  width: 327,
                                  text: "msg_add_new_educati".tr,
                                  margin: getMargin(top: 32),
                                  variant: ButtonVariant.FillGray900,
                                  shape: ButtonShape.RoundedBorder24,
                                  padding: ButtonPadding.PaddingAll20,
                                  fontStyle:
                                      ButtonFontStyle.PlusJakartaSansSemiBold16)
                            ]))))));
  }

  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? fileList = [];
    FileManager().filePickerMethod(1000 * 1000, ['pdf', 'doc'],
        getFiles: (value) {
      fileList = value;
    });
  }

  onTapArrowleft14() {
    Get.back();
  }
}
