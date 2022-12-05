import '../on_boarding_two_screen/widgets/sliderbetterfuturei_item_widget.dart';
import 'controller/on_boarding_two_controller.dart';
import 'models/sliderbetterfuturei_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingTwoScreen extends GetWidget<OnBoardingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                768.00,
              ),
              width: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: getVerticalSize(
                        536.00,
                      ),
                      width: size.width,
                      margin: getMargin(
                        bottom: 10,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CommonImageView(
                              imagePath: ImageConstant.imgCircle,
                              height: getVerticalSize(
                                536.00,
                              ),
                              width: getHorizontalSize(
                                375.00,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: getHorizontalSize(
                                29.00,
                              ),
                              margin: getMargin(
                                left: 25,
                                top: 20,
                                right: 25,
                                bottom: 20,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    7.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "lbl_skip".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansSemiBold14
                                          .copyWith(
                                        letterSpacing: 0.07,
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
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        672.00,
                      ),
                      width: getHorizontalSize(
                        327.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 40,
                        right: 24,
                        bottom: 20,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 10,
                                right: 10,
                                bottom: 10,
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgImage369X306,
                                height: getVerticalSize(
                                  369.00,
                                ),
                                width: getHorizontalSize(
                                  306.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: getVerticalSize(
                                335.00,
                              ),
                              width: getHorizontalSize(
                                327.00,
                              ),
                              margin: getMargin(
                                top: 10,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Obx(
                                    () => CarouselSlider.builder(
                                      options: CarouselOptions(
                                        height: getVerticalSize(
                                          335.00,
                                        ),
                                        initialPage: 0,
                                        autoPlay: true,
                                        viewportFraction: 1.0,
                                        enableInfiniteScroll: false,
                                        scrollDirection: Axis.horizontal,
                                        onPageChanged: (index, reason) {
                                          controller.silderIndex.value = index;
                                        },
                                      ),
                                      itemCount: controller
                                          .onBoardingTwoModelObj
                                          .value
                                          .sliderbetterfutureiItemList
                                          .length,
                                      itemBuilder: (context, index, realIndex) {
                                        SliderbetterfutureiItemModel model =
                                            controller
                                                    .onBoardingTwoModelObj
                                                    .value
                                                    .sliderbetterfutureiItemList[
                                                index];
                                        return SliderbetterfutureiItemWidget(
                                          model,
                                        );
                                      },
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Obx(
                                      () => Container(
                                        height: getVerticalSize(
                                          10.00,
                                        ),
                                        margin: getMargin(
                                          left: 125,
                                          top: 112,
                                          right: 125,
                                          bottom: 112,
                                        ),
                                        child: AnimatedSmoothIndicator(
                                          activeIndex:
                                              controller.silderIndex.value,
                                          count: controller
                                              .onBoardingTwoModelObj
                                              .value
                                              .sliderbetterfutureiItemList
                                              .length,
                                          axisDirection: Axis.horizontal,
                                          effect: ScrollingDotsEffect(
                                            spacing: 12,
                                            activeDotColor:
                                                ColorConstant.gray900,
                                            dotColor: ColorConstant.gray90068,
                                            dotHeight: getVerticalSize(
                                              10.00,
                                            ),
                                            dotWidth: getHorizontalSize(
                                              10.00,
                                            ),
                                          ),
                                        ),
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
