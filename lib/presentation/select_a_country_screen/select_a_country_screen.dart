import 'controller/select_a_country_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_radio_button.dart';
import 'package:praharsh_s_application1/widgets/custom_search_view.dart';

class SelectACountryScreen extends GetWidget<SelectACountryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA702,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 12,
          leading: AppbarImage(
            height: getSize(
              12.00,
            ),
            width: getSize(
              12.00,
            ),
            svgPath: ImageConstant.imgClose,
            margin: getMargin(
              bottom: 6,
            ),
          ),
          title: AppbarTitle(
            text: "msg_select_a_countr".tr,
            margin: getMargin(
              left: 72,
            ),
          ),
        ),
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 24,
                      top: 40,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          24.00,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomSearchView(
                          width: 327,
                          focusNode: FocusNode(),
                          controller: controller.frameOneController,
                          hintText: "lbl_search".tr,
                          alignment: Alignment.centerLeft,
                          prefix: Container(
                            margin: getMargin(
                              left: 17,
                              top: 18,
                              right: 9,
                              bottom: 17,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgSearch,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            minWidth: getSize(
                              15.00,
                            ),
                            minHeight: getSize(
                              15.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Obx(
                    () => Column(
                      children: [
                        CustomRadioButton(
                          text: "lbl_afghanistan".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[0],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            right: 69,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_albania".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[1],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 102,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_algeria".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[2],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 106,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_andorra".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[3],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 97,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_angola".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[4],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 107,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "msg_antigua_and_bar".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[5],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_argentina".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[6],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 85,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_argentina".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[7],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 85,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_armenia".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[8],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 95,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_australia".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[9],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 93,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_austria".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[10],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 106,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_azerbaijan".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[11],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 78,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_azerbaijan".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryModelObj.value.radioList[12],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 24,
                            right: 78,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
