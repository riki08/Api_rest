import 'package:api_rest/src/data/repositories/character_repository.dart';
import 'package:get/get.dart';

class ListItemsController extends GetxController {
  final CharacterRepository _characterRepository =
      Get.find<CharacterRepository>();

  final _loading = false.obs;
  get loading => _loading.value;
  set loading(value) => _loading.value = value;

  final _chacteres = [].obs;
  get chacteres => _chacteres;
  set chacteres(value) => _chacteres.assignAll(value);

  @override
  void onInit() {
    getAllChacteres();
    super.onInit();
  }

  void getAllChacteres() async {
    try {
      loading = true;
      chacteres = [];

      chacteres = await _characterRepository.getAllCharacters();
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    } finally {
      loading = false;
    }
  }
}
