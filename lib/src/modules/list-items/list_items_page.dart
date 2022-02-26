import 'package:api_rest/src/data/models/character.dart';
import 'package:api_rest/src/modules/list-items/list_items_controller.dart';
import 'package:api_rest/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListItemsPAge extends GetView<ListItemsController> {
  const ListItemsPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personajes'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Obx(
          () => controller.loading
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : ListView.builder(
                  itemCount: controller.chacteres.length,
                  itemBuilder: (_, int index) {
                    Character _character = controller.chacteres[index];
                    return CardCharacter(character: _character);
                  },
                ),
        ),
      ),
    );
  }
}

class CardCharacter extends StatelessWidget {
  const CardCharacter({
    Key? key,
    required Character character,
  })  : _character = character,
        super(key: key);

  final Character _character;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: Image.network(_character.image),
        title: Text(_character.name),
        subtitle: Text(_character.gender),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () => Get.toNamed(AppRoutes.detailsItem, arguments: _character),
      ),
    );
  }
}
