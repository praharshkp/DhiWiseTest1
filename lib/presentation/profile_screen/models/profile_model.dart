import 'package:get/get.dart';
import 'listskills_one_item_model.dart';
import 'listuser2_item_model.dart';

class ProfileModel {
  RxList<ListskillsOneItemModel> listskillsOneItemList =
      RxList.filled(2, ListskillsOneItemModel());

  RxList<Listuser2ItemModel> listuser2ItemList =
      RxList.filled(3, Listuser2ItemModel());
}
