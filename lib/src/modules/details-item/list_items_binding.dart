import 'package:api_rest/src/modules/details-item/list_items_controller.dart';
import 'package:get/get.dart';

class DetailsItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsItemController());
  }
}
