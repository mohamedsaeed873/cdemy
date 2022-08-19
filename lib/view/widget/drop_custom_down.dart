import 'dart:ffi';

import 'package:cdemy/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CheckboxsPage extends StatelessWidget {
  MainControllers controllers = Get.put(MainControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
            children: [
              Obx(() => Column(
                  mainAxisSize: MainAxisSize.min, children: generateItems())),
              SizedBox(
                height: 30,
              ),
           ]
      ),
    ),
          ],
        ),
    );
  }
}

List<Widget> generateItems() {
  MainControllers controllers = Get.put(MainControllers());
  final result = <Widget>[];
  for (int i = 0; i < controllers.dataListe.length; i++) {
    result.add(CheckboxListTile(
      contentPadding: EdgeInsets.all(8),
        value: controllers.dataListe[i].selected,
        secondary: Image(image: AssetImage(controllers.dataListe[i].image),),
        activeColor: Colors.green,
        title: Text(controllers.dataListe[i].title),
        onChanged: (v) {
          controllers.dataListe[i].selected = v ?? false;
          controllers.dataListe.refresh();
        }));
  }
  return result;
}
