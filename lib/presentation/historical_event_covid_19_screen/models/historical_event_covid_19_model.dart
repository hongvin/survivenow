import 'package:get/get.dart';
import 'listtakeawaysfromsimilar_item_model.dart';

class HistoricalEventCovid19Model {
  RxList<ListtakeawaysfromsimilarItemModel> listtakeawaysfromsimilarItemList =
      RxList.generate(2, (index) => ListtakeawaysfromsimilarItemModel());
}
