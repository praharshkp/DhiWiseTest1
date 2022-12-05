import 'controller/personal_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';
import 'package:praharsh_s_application1/widgets/custom_text_form_field.dart';

class PersonalInfoScreen extends GetWidget<PersonalInfoController> {
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
                    onTap: onTapArrowleft13),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_personal_info".tr),
                actions: [
                  AppbarImage(
                      height: getSize(20.00),
                      width: getSize(20.00),
                      svgPath: ImageConstant.imgEdit)
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 49),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(8.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text("lbl_first_name".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14
                                                    .copyWith(
                                                        letterSpacing: 0.07,
                                                        height: 1.00))),
                                        CustomTextFormField(
                                            width: 327,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameOneController,
                                            hintText: "lbl_gustavo".tr,
                                            margin: getMargin(top: 11))
                                      ])),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(8.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text("lbl_last_name".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14
                                                    .copyWith(
                                                        letterSpacing: 0.07,
                                                        height: 1.00))),
                                        CustomTextFormField(
                                            width: 327,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .frameOneOneController,
                                            hintText: "lbl_lipshutz".tr,
                                            margin: getMargin(top: 11))
                                      ])),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(8.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text("lbl_email".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14
                                                    .copyWith(
                                                        letterSpacing: 0.07,
                                                        height: 1.00))),
                                        CustomTextFormField(
                                            width: 327,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.emailController,
                                            hintText: "msg_gustavolipshutz".tr,
                                            margin: getMargin(top: 11))
                                      ])),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(8.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text("lbl_phone".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14
                                                    .copyWith(
                                                        letterSpacing: 0.07,
                                                        height: 1.00))),
                                        CustomTextFormField(
                                            width: 327,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .frameOneTwoController,
                                            hintText: "lbl_1_9003430".tr,
                                            margin: getMargin(top: 11),
                                            textInputAction:
                                                TextInputAction.done)
                                      ])),
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(8.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 10),
                                            child: Text("lbl_location".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium14
                                                    .copyWith(
                                                        letterSpacing: 0.07,
                                                        height: 1.00))),
                                        Container(
                                            width: double.infinity,
                                            margin: getMargin(top: 11),
                                            decoration: AppDecoration
                                                .outlineIndigo50
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder24),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 23,
                                                              right: 16,
                                                              bottom: 92),
                                                          child: Text(
                                                              "lbl_lorem_ipsun"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign: TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtPlusJakartaSansMedium16
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          0.08,
                                                                      height:
                                                                          1.00))))
                                                ]))
                                      ])),
                              CustomButton(
                                  width: 327,
                                  text: "lbl_save_changes".tr,
                                  margin: getMargin(top: 38),
                                  variant: ButtonVariant.FillBluegray51,
                                  shape: ButtonShape.RoundedBorder24,
                                  padding: ButtonPadding.PaddingAll20,
                                  fontStyle: ButtonFontStyle
                                      .PlusJakartaSansSemiBold16Bluegray300)
                            ]))))));
  }

  onTapArrowleft13() {
    Get.back();
  }
}
