
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SingleCatigory extends StatelessWidget {
  final String? cat_id;
  final String? cat_name;
  final String? cat_image;
  final Function()? onTap;

  const SingleCatigory(
      {Key? key, this.cat_id, this.onTap, this.cat_name, this.cat_image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          //     ()
          // {
          //   print("object");
          //   // Navigator.push(
          //   //     context,
          //   //     MaterialPageRoute(
          //   //         builder: (context) => new SubCatigory(
          //   //           cat_id: cat_id!,
          //   //           cat_name: cat_name!,
          //   //         )));
          // },
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.only(right: 10),
              child: Image.network(
                cat_image!,
              ),
            ),
            title: Text(
              cat_name!,
              style: TextStyle(
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
