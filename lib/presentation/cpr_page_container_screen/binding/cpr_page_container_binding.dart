import '../controller/cpr_page_container_controller.dart';
import 'package:get/get.dart';

class CprPageContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CprPageContainerController());
  }
}
