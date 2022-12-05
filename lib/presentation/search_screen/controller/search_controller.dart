import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';

class SearchController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

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
