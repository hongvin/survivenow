import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/historical_event_covid_19_screen/models/historical_event_covid_19_model.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';

class HistoricalEventCovid19Controller extends GetxController {
  Rx<HistoricalEventCovid19Model> historicalEventCovid19ModelObj =
      HistoricalEventCovid19Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
