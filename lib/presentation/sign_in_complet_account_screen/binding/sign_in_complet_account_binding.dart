import '../controller/sign_in_complet_account_controller.dart';
import 'package:get/get.dart';

class SignInCompletAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInCompletAccountController());
  }
}
