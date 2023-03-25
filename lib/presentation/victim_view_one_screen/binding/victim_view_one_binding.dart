import '../controller/victim_view_one_controller.dart';
import 'package:get/get.dart';

class VictimViewOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VictimViewOneController());
  }
}
