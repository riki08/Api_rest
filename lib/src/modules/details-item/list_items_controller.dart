import 'package:api_rest/src/data/models/character.dart';
import 'package:get/get.dart';

class DetailsItemController extends GetxController {
  late Character character;

  @override
  void onInit() {
    if (Get.arguments != null) {
      character = Get.arguments;
    }
    super.onInit();
  }
}
