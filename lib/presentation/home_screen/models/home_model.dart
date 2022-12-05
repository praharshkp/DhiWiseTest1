import 'package:get/get.dart';
import 'listuser_item_model.dart';
import 'listarrowup_item_model.dart';

class HomeModel {
  RxList<ListuserItemModel> listuserItemList =
      RxList.filled(2, ListuserItemModel());

  RxList<ListarrowupItemModel> listarrowupItemList =
      RxList.filled(2, ListarrowupItemModel());
}
