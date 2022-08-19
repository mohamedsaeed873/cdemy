
import 'package:cdemy/controllers/main_controller.dart';
import 'package:cdemy/view/Screens/home/main_screen.dart';
import 'package:cdemy/view/widget/drop_custom_down.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class ViewScreen extends StatelessWidget {
  MainControllers controllers = Get.put(MainControllers());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Get.isDarkMode ? Color(0xFF030338) : Colors.white,
            title: Text('What Is Your Interest?'.tr,
            style:  TextStyle(
              color:Get.isDarkMode ? Colors.white : Color(0xFF030338),
            ),)),
        body: CheckboxsPage(),
        bottomNavigationBar:Container(

          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: const Border(
                bottom: BorderSide(color: Colors.black),
                top: BorderSide(color: Colors.black),
                left: BorderSide(color: Colors.black),
                right: BorderSide(color: Colors.black),
              )),
          child: MaterialButton(
            minWidth: double.infinity,
            height: 60,
            color: Colors.green,
            //elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPressed: () {
              controllers.selctedItems.clear();
              controllers.selctedItems
                  .addAll(controllers.dataListe.where((p0) => p0.selected));
              controllers.selctedItems.refresh();
              Get.to(MainScreen());
            },
            child: Text('Get Selected'.tr ,
                style:  TextStyle(fontWeight: FontWeight.w600, fontSize: 18 , color: Get.isDarkMode ? Colors.white : Color(0xFF030338))),
          ),
        ),
      ),


    );

  }
}
