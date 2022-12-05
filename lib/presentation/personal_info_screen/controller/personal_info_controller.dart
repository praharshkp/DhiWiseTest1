import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/personal_info_screen/models/personal_info_model.dart';
import 'package:flutter/material.dart';

class PersonalInfoController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneOneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController frameOneTwoController = TextEditingController();

  Rx<PersonalInfoModel> personalInfoModelObj = PersonalInfoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    frameOneOneController.dispose();
    emailController.dispose();
    frameOneTwoController.dispose();
  }
}
