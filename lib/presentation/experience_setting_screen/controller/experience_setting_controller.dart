import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/experience_setting_screen/models/experience_setting_model.dart';

class ExperienceSettingController extends GetxController {
  Rx<ExperienceSettingModel> experienceSettingModelObj =
      ExperienceSettingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
