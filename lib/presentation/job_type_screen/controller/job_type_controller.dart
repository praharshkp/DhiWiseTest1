import 'package:praharsh_s_application1/core/app_export.dart';
import 'package:praharsh_s_application1/presentation/job_type_screen/models/job_type_model.dart';

class JobTypeController extends GetxController {
  Rx<JobTypeModel> jobTypeModelObj = JobTypeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
