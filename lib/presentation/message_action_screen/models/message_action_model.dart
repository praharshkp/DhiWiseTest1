import 'package:get/get.dart';
import 'message_action_item_model.dart';

class MessageActionModel {
  RxList<MessageActionItemModel> messageActionItemList =
      RxList.filled(4, MessageActionItemModel());
}
