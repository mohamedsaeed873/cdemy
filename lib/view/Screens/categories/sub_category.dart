// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors


import 'package:cdemy/models/getCoursesCategory_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SubCatigory extends StatefulWidget {
  final GetCoursesCategoryModel? getCourseModel;
  final Function()? onTap;
  final String? details;

  const SubCatigory({this.getCourseModel, this.onTap, this.details, });

  @override
  State<SubCatigory> createState() => _SubCatigoryState();
}

class _SubCatigoryState extends State<SubCatigory> {
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
          widget.getCourseModel!.data!.name!,
          style: TextStyle(
              fontSize: 25,
              color: Get.isDarkMode ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      // body: Padding(
      //   padding: const EdgeInsets.only(top: 20),
      //   child: SizedBox(
      //     width: double.infinity,
      //     height: MediaQuery.of(context).size.height,
      //     child: ListView.builder(
      //         physics: const BouncingScrollPhysics(),
      //         itemBuilder: (context, index) {
      //           return SingleSubCatigory(
      //               sub_id: widget.getCourseModel!.data!.courses![index]
      //                   .topics![index].topicId!.id
      //                   .toString(),
      //               sub_name:
      //               widget.getCourseModel!.data!.courses![index]
      //                   .topics![index].topicId!.name
      //                   .toString(),
      //               sub_image:
      //                   "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg");
      //         },
      //         itemCount: widget.getCourseModel!.data!.courses!.length),
      //   ),
      // ),
    );
  }
}
