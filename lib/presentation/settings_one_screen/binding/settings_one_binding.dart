import '../controller/settings_one_controller.dart';
import 'package:get/get.dart';

class SettingsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingsOneController());
  }
}
