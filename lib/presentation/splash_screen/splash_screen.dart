import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Padding(
                          padding: getPadding(left: 143, top: 269, right: 142),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgComputer,
                              height: getVerticalSize(87.00),
                              width: getHorizontalSize(85.00))),
                      Padding(
                          padding: getPadding(
                              left: 143, top: 28, right: 143, bottom: 20),
                          child: Text("lbl_hired".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansBold32
                                  .copyWith(letterSpacing: 0.16, height: 1.00)))
                    ])))));
  }
}
