import 'controller/select_a_country_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_radio_button.dart';
import 'package:praharsh_s_application1/widgets/custom_search_view.dart';

class SelectACountryOneScreen extends GetWidget<SelectACountryOneController> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.infinity,
                    margin: getMargin(
                      left: 24,
                      top: 39,
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
                          hintText: "lbl_ind".tr,
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
                          text: "lbl_iceland".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryOneModelObj.value.radioList[0],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            right: 19,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_indonesia".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryOneModelObj.value.radioList[1],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 56,
                            right: 2,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_india".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryOneModelObj.value.radioList[2],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            right: 39,
                          ),
                          onChange: (value) {
                            controller.radioGroup.value = value;
                          },
                        ),
                        CustomRadioButton(
                          text: "lbl_iran".tr,
                          iconSize: 24,
                          value: controller
                              .selectACountryOneModelObj.value.radioList[3],
                          groupValue: controller.radioGroup.value,
                          margin: getMargin(
                            top: 56,
                            right: 48,
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
