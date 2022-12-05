import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/on_boarding_two_screen/models/on_boarding_two_model.dart';

class OnBoardingTwoController extends GetxController {
  Rx<OnBoardingTwoModel> onBoardingTwoModelObj = OnBoardingTwoModel().obs;

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
