import 'package:get/get.dart';
import 'sliderwhatyoushould_item_model.dart';

class VictimViewModel {
  RxList<SliderwhatyoushouldItemModel> sliderwhatyoushouldItemList =
      RxList.generate(1, (index) => SliderwhatyoushouldItemModel());
}
