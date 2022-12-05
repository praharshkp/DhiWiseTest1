import 'package:get/get.dart';
import 'listlanguage_one_item_model.dart';
import 'listchineses_item_model.dart';

class LanguageModel {
  RxList<ListlanguageOneItemModel> listlanguageOneItemList =
      RxList.filled(3, ListlanguageOneItemModel());

  RxList<ListchinesesItemModel> listchinesesItemList =
      RxList.filled(6, ListchinesesItemModel());
}
