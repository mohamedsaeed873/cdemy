
import 'package:cdemy/view/Screens/categories/cor_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleSubCatigory extends StatelessWidget {
  final String? sub_id;
  final String? sub_name;
  final String? sub_image;

  const SingleSubCatigory({
     this.sub_id,
     this.sub_image,
     this.sub_name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Get.to(
                CorCatigory(
                  cat_name: sub_name!,
                  cat_id: sub_id!,
                ));
          },
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.only(right: 10),
              child: Image.network(
                sub_image!,
              ),
            ),
            title: Text(
              sub_name!,
              style:  TextStyle(
                  fontWeight: FontWeight.bold,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Get.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
