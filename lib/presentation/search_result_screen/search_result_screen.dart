import '../search_result_screen/widgets/search_result_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/search_result_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_search_view.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
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
                    margin: getMargin(top: 2, bottom: 2),
                    onTap: onTapArrowleft1),
                title: AppbarTitle(
                    text: "lbl_find_jobs".tr, margin: getMargin(left: 102))),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 45),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(24.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            24.00))),
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
                                                      controller: controller
                                                          .frameOneController,
                                                      hintText: "lbl_ui_ux_designs"
                                                          .tr,
                                                      alignment:
                                                          Alignment.centerLeft,
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
                                                          minWidth:
                                                              getSize(15.00),
                                                          minHeight:
                                                              getSize(15.00)),
                                                      suffix: Padding(
                                                          padding: EdgeInsets.only(
                                                              right:
                                                                  getHorizontalSize(
                                                                      15.00)),
                                                          child: IconButton(
                                                              onPressed: () {
                                                                controller
                                                                    .frameOneController
                                                                    .clear;
                                                              },
                                                              icon: Icon(
                                                                  Icons.clear,
                                                                  color: Colors
                                                                      .grey
                                                                      .shade600))),
                                                      suffixConstraints: BoxConstraints(
                                                          minWidth: getHorizontalSize(9.00),
                                                          minHeight: getVerticalSize(9.00)))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 19, right: 10),
                                            child: Text(
                                                "lbl_1_232_job_found".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansSemiBold12Gray600
                                                    .copyWith(
                                                        letterSpacing: 0.06,
                                                        height: 1.00)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 26),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.searchResultModelObj
                                          .value.searchResultItemList.length,
                                      itemBuilder: (context, index) {
                                        SearchResultItemModel model = controller
                                            .searchResultModelObj
                                            .value
                                            .searchResultItemList[index];
                                        return SearchResultItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
