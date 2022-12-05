import '../home_screen/widgets/listarrowup_item_widget.dart';
import '../home_screen/widgets/listuser_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/listarrowup_item_model.dart';
import 'models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:praharsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_bottom_bar.dart';
import 'package:praharsh_s_application1/widgets/custom_search_view.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA702,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 50,
                leading: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(getHorizontalSize(25.00)),
                    child: CommonImageView(
                        imagePath: ImageConstant.imgImage50X50,
                        height: getSize(50.00),
                        width: getSize(50.00),
                        fit: BoxFit.cover)),
                title: Padding(
                    padding: getPadding(left: 10),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_hi_welcome_bac".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold14
                                      .copyWith(
                                          letterSpacing: 0.07, height: 1.00))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 9, right: 33),
                                  child: Text("msg_find_your_dream".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPlusJakartaSansMedium12
                                          .copyWith(
                                              letterSpacing: 0.06,
                                              height: 1.00))))
                        ])),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(21.00),
                      width: getHorizontalSize(18.00),
                      svgPath: ImageConstant.imgClock,
                      margin: getMargin(top: 14, bottom: 15))
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: double.infinity,
                        margin: getMargin(left: 10, top: 30),
                        decoration: AppDecoration.fillWhiteA702,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: double.infinity,
                                  margin: getMargin(right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(24.00))),
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
                                            controller:
                                                controller.frameOneController,
                                            hintText: "lbl_search".tr,
                                            alignment: Alignment.centerLeft,
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
                                                minWidth: getSize(15.00),
                                                minHeight: getSize(15.00)),
                                            suffix: Padding(
                                                padding: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                        15.00)),
                                                child: IconButton(
                                                    onPressed: () {
                                                      controller
                                                          .frameOneController
                                                          .clear;
                                                    },
                                                    icon: Icon(Icons.clear,
                                                        color: Colors
                                                            .grey.shade600))),
                                            suffixConstraints: BoxConstraints(
                                                minWidth:
                                                    getHorizontalSize(23.00),
                                                minHeight:
                                                    getVerticalSize(18.00)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 28, right: 10),
                                  child: Text("lbl_recommendation".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansSemiBold18
                                          .copyWith(
                                              letterSpacing: 0.09,
                                              height: 1.00))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(195.00),
                                      width: getHorizontalSize(562.00),
                                      child: Obx(() => ListView.builder(
                                          padding: getPadding(top: 19),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          itemCount: controller.homeModelObj
                                              .value.listuserItemList.length,
                                          itemBuilder: (context, index) {
                                            ListuserItemModel model = controller
                                                .homeModelObj
                                                .value
                                                .listuserItemList[index];
                                            return ListuserItemWidget(model,
                                                onTapBtntf: onTapBtntf);
                                          })))),
                              Padding(
                                  padding: getPadding(top: 24, right: 10),
                                  child: Text("lbl_recent_jobs".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular16
                                          .copyWith(
                                              letterSpacing: 0.08,
                                              height: 1.00))),
                              Padding(
                                  padding: getPadding(top: 18, right: 10),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.homeModelObj.value
                                          .listarrowupItemList.length,
                                      itemBuilder: (context, index) {
                                        ListarrowupItemModel model = controller
                                            .homeModelObj
                                            .value
                                            .listarrowupItemList[index];
                                        return ListarrowupItemWidget(model);
                                      })))
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return getDefaultWidget();
      case BottomBarEnum.Message:
        return getDefaultWidget();
      case BottomBarEnum.Saved:
        return getDefaultWidget();
      case BottomBarEnum.Profil:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }

  onTapBtntf() async {
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? fileList = [];
//TODO: use permission for using selected files
    FileManager().filePickerMethod(1000 * 1000, ['pdf', 'doc'],
        getFiles: (value) {
      fileList = value;
    });
  }
}
