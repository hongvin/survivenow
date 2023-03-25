import '../controller/home_sos_controller.dart';
import 'package:get/get.dart';

class HomeSosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeSosController());
  }
}
