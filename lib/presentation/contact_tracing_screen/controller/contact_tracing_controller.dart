import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/contact_tracing_screen/models/contact_tracing_model.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';

class ContactTracingController extends GetxController {
  Rx<ContactTracingModel> contactTracingModelObj = ContactTracingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
