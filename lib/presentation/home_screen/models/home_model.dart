import 'package:get/get.dart';
import 'home_item_model.dart';

class HomeModel {
  RxList<HomeItemModel> homeItemList =
      RxList.generate(6, (index) => HomeItemModel());
}
