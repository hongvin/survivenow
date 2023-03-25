import '../controller/historical_event_covid_19_controller.dart';
import 'package:get/get.dart';

class HistoricalEventCovid19Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HistoricalEventCovid19Controller());
  }
}
