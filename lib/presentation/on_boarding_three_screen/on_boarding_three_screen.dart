import '../on_boarding_three_screen/widgets/sliderapplicationsur_item_widget.dart';
import 'controller/on_boarding_three_controller.dart';
import 'models/sliderapplicationsur_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingThreeScreen extends GetWidget<OnBoardingThreeController> {
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
                    child: Padding(
                      padding: getPadding(
                        bottom: 10,
                      ),
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
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        699.00,
                      ),
                      width: getHorizontalSize(
                        327.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 29,
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
                                left: 7,
                                right: 7,
                                bottom: 10,
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgImage422X313,
                                height: getVerticalSize(
                                  422.00,
                                ),
                                width: getHorizontalSize(
                                  313.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: getVerticalSize(
                                367.00,
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
                                          367.00,
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
                                          .onBoardingThreeModelObj
                                          .value
                                          .sliderapplicationsurItemList
                                          .length,
                                      itemBuilder: (context, index, realIndex) {
                                        SliderapplicationsurItemModel model =
                                            controller
                                                    .onBoardingThreeModelObj
                                                    .value
                                                    .sliderapplicationsurItemList[
                                                index];
                                        return SliderapplicationsurItemWidget(
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
                                              .onBoardingThreeModelObj
                                              .value
                                              .sliderapplicationsurItemList
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
