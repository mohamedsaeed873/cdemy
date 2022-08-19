
import 'package:cdemy/view/widget/content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CorCatigory extends StatefulWidget {
  final String? cat_id;
  final String? cat_name;


  const CorCatigory({this.cat_id, this.cat_name,});

  @override
  State<CorCatigory> createState() => _CorCatigoryState();
}

class _CorCatigoryState extends State<CorCatigory> {
/*  List my_catigory = [
    {
      "sub_id": "1",
      "sub_name": "Flutter",
      "sub_image": "assets/cdemy_icon_w.png",
    },
    {
      "sub_id": "2",
      "sub_name": "Html",
      "sub_image": "assets/cdemy_icon_w.png",

    },
    {
      "sub_id": "3",
      "sub_name": "Css",
      "sub_image": "assets/cdemy_icon_w.png",

    },
    {
      "sub_id": "1",
      "sub_name": "Java",
      "sub_image": "assets/cdemy_icon_w.png",

    },
    {
      "sub_id": "2",
      "sub_name": "Dart",
      "sub_image": "assets/cdemy_icon_w.png",

    },
    {
      "sub_id": "3",
      "sub_name": "C#",
      "sub_image": "assets/cdemy_icon_w.png",

    },
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        elevation: 0.0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            )),
        title: Text(
          widget.cat_name!,
          style: TextStyle(
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        child: GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: 8,
          itemBuilder: (ctx, i) {
            return const Card(
              child: SizedBox(
                width: 200,
                child: Content(
                  image: 'assets/cedemy_icon.png',
                  nameCourse: "Flutter",
                  nameTech: 'MohamedSaeed',
                  nameButton: 'Transition',
                ),
              ),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 5,
            mainAxisExtent: 350,
          ),
        ),
      ),
    );
  }
}
