import 'package:api_rest/src/modules/list-items/list_items_controller.dart';
import 'package:get/get.dart';

class ListItemsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ListItemsController());
  }
}
