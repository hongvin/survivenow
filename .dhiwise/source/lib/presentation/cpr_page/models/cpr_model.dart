import 'package:get/get.dart';
import 'listcallforhelp000010_item_model.dart';
import 'listsummary_item_model.dart';

class CprModel {
  RxList<Listcallforhelp000010ItemModel> listcallforhelp000010ItemList =
      RxList.generate(4, (index) => Listcallforhelp000010ItemModel());

  RxList<ListsummaryItemModel> listsummaryItemList =
      RxList.generate(3, (index) => ListsummaryItemModel());
}
