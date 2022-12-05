import '../controller/sign_in_create_acount_controller.dart';
import 'package:get/get.dart';

class SignInCreateAcountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInCreateAcountController());
  }
}
