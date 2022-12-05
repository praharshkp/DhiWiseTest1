import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/settings_one_screen/models/settings_one_model.dart';
import 'package:praharsh_s_application1/widgets/custom_bottom_bar.dart';

class SettingsOneController extends GetxController {
  Rx<SettingsOneModel> settingsOneModelObj = SettingsOneModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
