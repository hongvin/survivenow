import '../controller/specific_help_controller.dart';
import 'package:get/get.dart';

class SpecificHelpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpecificHelpController());
  }
}
