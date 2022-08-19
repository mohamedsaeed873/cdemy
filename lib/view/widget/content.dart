
import 'package:cdemy/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Content extends StatelessWidget {
  final String? image;
  final String? nameCourse;
  final String? nameTech;
  final String? nameButton;

  const Content(
      {super.key,
        this.image, this.nameCourse, this.nameTech, this.nameButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Get.isDarkMode ? Colors.black : Colors.white,
      ),
      child: Column(
        children: [
          Center(
            child: Image.network(image!),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  nameCourse!,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  nameTech!,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: AppColor.primary),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          MaterialButton(
              onPressed: () {},
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColor.primary,
                ),
                child: Center(
                  child: Text(
                    nameButton!,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
