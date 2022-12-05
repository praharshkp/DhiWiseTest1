import '../controller/language_controller.dart';
import '../models/listchineses_item_model.dart';
import 'package:flutter/material.dart';
import 'package:praharsh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListchinesesItemWidget extends StatelessWidget {
  ListchinesesItemWidget(this.listchinesesItemModelObj);

  ListchinesesItemModel listchinesesItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: getPadding(
          right: 224,
        ),
        child: Text(
          "lbl_chineses".tr,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPlusJakartaSansSemiBold16.copyWith(
            letterSpacing: 0.08,
            height: 1.00,
          ),
        ),
      ),
    );
  }
}
