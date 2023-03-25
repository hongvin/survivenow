import 'package:get/get.dart';
import 'home_sos_item_model.dart';

class HomeSosModel {
  RxList<HomeSosItemModel> homeSosItemList =
      RxList.generate(6, (index) => HomeSosItemModel());
}
