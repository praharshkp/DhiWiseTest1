import '../controller/home_controller.dart';
import '../models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListuserItemWidget extends StatelessWidget {
  ListuserItemWidget(this.listuserItemModelObj, {this.onTapBtntf});

  ListuserItemModel listuserItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapBtntf;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          decoration: AppDecoration.fillGray900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomIconButton(
                height: 48,
                width: 48,
                margin: getMargin(
                  left: 16,
                  top: 16,
                  bottom: 112,
                ),
                variant: IconButtonVariant.FillWhiteA700,
                onTap: () {
                  onTapBtntf!();
                },
                child: CommonImageView(
                  svgPath: ImageConstant.imgUser48X48,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 12,
                  top: 22,
                  right: 16,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      16.00,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        right: 10,
                      ),
                      child: Text(
                        "msg_senior_ui_ux_de".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansBold14Gray50.copyWith(
                          letterSpacing: 0.07,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 11,
                        right: 10,
                      ),
                      child: Text(
                        "lbl_shopee".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansSemiBold12.copyWith(
                          letterSpacing: 0.06,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 15,
                        right: 10,
                      ),
                      child: Text(
                        "msg_jakarta_indone".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPlusJakartaSansMedium12Gray5094
                            .copyWith(
                          letterSpacing: 0.06,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 13,
                        right: 10,
                      ),
                      child: Text(
                        "msg_1100_12_000".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtPlusJakartaSansMedium12Gray50.copyWith(
                          letterSpacing: 0.06,
                          height: 1.00,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                          top: 19,
                          right: 1,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              14.00,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              padding: getPadding(
                                left: 12,
                                top: 8,
                                right: 12,
                                bottom: 7,
                              ),
                              decoration:
                                  AppDecoration.txtFillWhiteA7001e.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtCircleBorder14,
                              ),
                              child: Text(
                                "lbl_fulltime".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtPlusJakartaSansMedium12Gray50a2
                                    .copyWith(
                                  letterSpacing: 0.06,
                                  height: 1.00,
                                ),
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                left: 7,
                              ),
                              padding: getPadding(
                                left: 12,
                                top: 9,
                                right: 12,
                                bottom: 4,
                              ),
                              decoration:
                                  AppDecoration.txtFillWhiteA7001e.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.txtCircleBorder14,
                              ),
                              child: Text(
                                "lbl_two_days_ago".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtPlusJakartaSansMedium12Gray50a2
                                    .copyWith(
                                  letterSpacing: 0.06,
                                  height: 1.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
