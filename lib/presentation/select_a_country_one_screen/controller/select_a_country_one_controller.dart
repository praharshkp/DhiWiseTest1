import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/select_a_country_one_screen/models/select_a_country_one_model.dart';
import 'package:flutter/material.dart';

class SelectACountryOneController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  Rx<SelectACountryOneModel> selectACountryOneModelObj =
      SelectACountryOneModel().obs;

  RxString radioGroup = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
  }
}
