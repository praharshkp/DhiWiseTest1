import '../job_type_screen/widgets/job_type_item_widget.dart';
import 'controller/job_type_controller.dart';
import 'models/job_type_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_button.dart';

class JobTypeScreen extends GetWidget<JobTypeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA702,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Padding(
                          padding: getPadding(left: 27, top: 18, right: 27),
                          child: InkWell(
                              onTap: () {
                                onTapImgArrowleft();
                              },
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: getVerticalSize(13.00),
                                  width: getHorizontalSize(16.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 55, right: 24),
                              child: Text("lbl_choose_job_type".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold24
                                      .copyWith(
                                          letterSpacing: 0.12, height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(209.00),
                              margin: getMargin(left: 24, top: 14, right: 24),
                              child: Text("msg_are_you_looking".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle
                                      .txtPlusJakartaSansMedium14Bluegray400
                                      .copyWith(
                                          letterSpacing: 0.07, height: 1.57)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(269.00),
                              width: getHorizontalSize(327.00),
                              child: Obx(() => ListView.builder(
                                  padding:
                                      getPadding(left: 24, top: 40, right: 24),
                                  scrollDirection: Axis.horizontal,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: controller.jobTypeModelObj.value
                                      .jobTypeItemList.length,
                                  itemBuilder: (context, index) {
                                    JobTypeItemModel model = controller
                                        .jobTypeModelObj
                                        .value
                                        .jobTypeItemList[index];
                                    return JobTypeItemWidget(model);
                                  })))),
                      CustomButton(
                          width: 327,
                          text: "lbl_continue".tr,
                          margin: getMargin(
                              left: 24, top: 223, right: 24, bottom: 20),
                          variant: ButtonVariant.FillGray900,
                          shape: ButtonShape.RoundedBorder24,
                          padding: ButtonPadding.PaddingAll20,
                          fontStyle: ButtonFontStyle.PlusJakartaSansSemiBold16,
                          alignment: Alignment.center)
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
