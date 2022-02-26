import 'package:api_rest/src/modules/details-item/list_items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsItemPAge extends GetView<DetailsItemController> {
  const DetailsItemPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informacion del personaje'),
      ),
      body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              Container(
                height: 180.0,
                width: 180.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: NetworkImage(controller.character.image),
                      fit: BoxFit.contain),
                ),
                alignment: Alignment.center,
              ),
              const SizedBox(height: 20),
              InformationBasic(controller: controller),
            ],
          )),
    );
  }
}

class InformationBasic extends StatelessWidget {
  const InformationBasic({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final DetailsItemController controller;

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Nombre: ',
              style: textStyle,
            ),
            Text(
              controller.character.name,
              style: textStyle.copyWith(fontWeight: FontWeight.normal),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Especie: ',
              style: textStyle,
            ),
            Text(
              controller.character.species,
              style: textStyle.copyWith(fontWeight: FontWeight.normal),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Genero: ',
              style: textStyle,
            ),
            Text(
              controller.character.gender,
              style: textStyle.copyWith(fontWeight: FontWeight.normal),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Estado: ',
              style: textStyle,
            ),
            Text(
              controller.character.status,
              style: textStyle.copyWith(fontWeight: FontWeight.normal),
            )
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
