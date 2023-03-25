import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/victim_view_screen/models/victim_view_model.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';

class VictimViewController extends GetxController {
  Rx<VictimViewModel> victimViewModelObj = VictimViewModel().obs;

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
