import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/on_boarding_three_screen/models/on_boarding_three_model.dart';

class OnBoardingThreeController extends GetxController {
  Rx<OnBoardingThreeModel> onBoardingThreeModelObj = OnBoardingThreeModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
