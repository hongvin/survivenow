import 'package:survive_now/core/app_export.dart';
import 'package:survive_now/presentation/home_sos_screen/models/home_sos_model.dart';
import 'package:survive_now/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeSosController extends GetxController {
  TextEditingController languageController = TextEditingController();

  Rx<HomeSosModel> homeSosModelObj = HomeSosModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
  }
}
