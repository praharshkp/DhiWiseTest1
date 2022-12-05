import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/sign_in_create_acount_screen/models/sign_in_create_acount_model.dart';
import 'package:flutter/material.dart';

class SignInCreateAcountController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  Rx<SignInCreateAcountModel> signInCreateAcountModelObj =
      SignInCreateAcountModel().obs;

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
