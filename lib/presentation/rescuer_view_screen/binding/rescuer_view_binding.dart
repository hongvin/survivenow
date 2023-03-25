import '../controller/rescuer_view_controller.dart';
import 'package:get/get.dart';

class RescuerViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RescuerViewController());
  }
}
