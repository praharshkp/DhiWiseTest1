import '../controller/select_a_country_one_controller.dart';
import 'package:get/get.dart';

class SelectACountryOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectACountryOneController());
  }
}
