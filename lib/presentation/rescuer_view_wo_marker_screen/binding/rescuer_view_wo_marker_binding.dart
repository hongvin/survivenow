import '../controller/rescuer_view_wo_marker_controller.dart';
import 'package:get/get.dart';

class RescuerViewWoMarkerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RescuerViewWoMarkerController());
  }
}
