import 'package:get/get.dart';
import 'notifications_item_model.dart';

class NotificationsModel {
  RxList<NotificationsItemModel> notificationsItemList =
      RxList.filled(4, NotificationsItemModel());
}
