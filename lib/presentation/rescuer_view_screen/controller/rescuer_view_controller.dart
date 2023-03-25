import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/rescuer_view_screen/models/rescuer_view_model.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';

class RescuerViewController extends GetxController {
  Rx<RescuerViewModel> rescuerViewModelObj = RescuerViewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
