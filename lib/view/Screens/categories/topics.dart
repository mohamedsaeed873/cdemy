import 'package:cdemy/models/getTopicsCategory_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Detail extends StatelessWidget {
  final String? details;
  GetTopicsCategoryModel? getTopicsCategoryModel;

   Detail({Key? key,this.details,
   this.getTopicsCategoryModel }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Text(
        details!,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
