import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/contact_tracing_wo_marker_screen/models/contact_tracing_wo_marker_model.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';

class ContactTracingWoMarkerController extends GetxController {
  Rx<ContactTracingWoMarkerModel> contactTracingWoMarkerModelObj =
      ContactTracingWoMarkerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
