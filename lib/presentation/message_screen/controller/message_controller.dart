import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/message_screen/models/message_model.dart';
import 'package:praharsh_s_application1/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MessageController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  Rx<MessageModel> messageModelObj = MessageModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

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
