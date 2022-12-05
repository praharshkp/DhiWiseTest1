import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/sign_in_complet_account_screen/models/sign_in_complet_account_model.dart';
import 'package:flutter/material.dart';

class SignInCompletAccountController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneOneController = TextEditingController();

  TextEditingController frameOneTwoController = TextEditingController();

  Rx<SignInCompletAccountModel> signInCompletAccountModelObj =
      SignInCompletAccountModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    frameOneOneController.dispose();
    frameOneTwoController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    signInCompletAccountModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    signInCompletAccountModelObj.value.dropdownItemList.refresh();
  }
}
