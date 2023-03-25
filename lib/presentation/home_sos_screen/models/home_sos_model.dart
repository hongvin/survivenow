import 'package:get/get.dart';
import 'homesos_item_model.dart';

class HomeSosModel {
  RxList<HomesosItemModel> homesosItemList =
      RxList.generate(6, (index) => HomesosItemModel());
}
