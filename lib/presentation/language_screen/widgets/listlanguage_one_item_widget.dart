import '../controller/language_controller.dart';
import '../models/listlanguage_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListlanguageOneItemWidget extends StatelessWidget {
  ListlanguageOneItemWidget(this.listlanguageOneItemModelObj);

  ListlanguageOneItemModel listlanguageOneItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          right: 240,
        ),
        child: Text(
          "lbl_english".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPlusJakartaSansSemiBold16Gray907.copyWith(
            letterSpacing: 0.08,
            height: 1.00,
          ),
        ),
      ),
    );
  }
}
