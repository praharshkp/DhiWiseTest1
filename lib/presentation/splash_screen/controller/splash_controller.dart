import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 6000), () {
      Get.toNamed(AppRoutes.onBoardingOneScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
