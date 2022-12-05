import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/add_new_education_screen/models/add_new_education_model.dart';
import 'package:flutter/material.dart';

class AddNewEducationController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneTwoController = TextEditingController();

  TextEditingController frameOneThreeController = TextEditingController();

  TextEditingController frameOneFourController = TextEditingController();

  TextEditingController frameOneFiveController = TextEditingController();

  Rx<AddNewEducationModel> addNewEducationModelObj = AddNewEducationModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    frameOneTwoController.dispose();
    frameOneThreeController.dispose();
    frameOneFourController.dispose();
    frameOneFiveController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    addNewEducationModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    addNewEducationModelObj.value.dropdownItemList.refresh();
  }
}
