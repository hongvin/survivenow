import '../controller/contact_tracing_wo_marker_controller.dart';
import 'package:get/get.dart';

class ContactTracingWoMarkerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactTracingWoMarkerController());
  }
}
