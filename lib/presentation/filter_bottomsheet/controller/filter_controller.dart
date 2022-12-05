import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/filter_bottomsheet/models/filter_model.dart';
import 'package:flutter/material.dart';

class FilterController extends GetxController {
  TextEditingController categoriesOneController = TextEditingController();

  TextEditingController categoriesTwoController = TextEditingController();

  TextEditingController categoriesThreeController = TextEditingController();

  TextEditingController categoriesFourController = TextEditingController();

  TextEditingController categoriesFiveController = TextEditingController();

  TextEditingController jobsOneController = TextEditingController();

  Rx<FilterModel> filterModelObj = FilterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    categoriesOneController.dispose();
    categoriesTwoController.dispose();
    categoriesThreeController.dispose();
    categoriesFourController.dispose();
    categoriesFiveController.dispose();
    jobsOneController.dispose();
  }
}
