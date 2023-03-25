import '../controller/victim_view_controller.dart';
import 'package:get/get.dart';

class VictimViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VictimViewController());
  }
}
