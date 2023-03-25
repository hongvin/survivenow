import '../controller/contact_tracing_controller.dart';
import 'package:get/get.dart';

class ContactTracingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactTracingController());
  }
}
