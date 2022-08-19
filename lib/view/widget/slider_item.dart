import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SliderItem extends StatelessWidget {
  final String slider_id;
  final String slider_image;
  final String slider_url;

  const SliderItem(
      {Key? key,
      required this.slider_id,
      required this.slider_image,
      required this.slider_url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          slider_url,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        Image.network(
          slider_image,
        ),
      ],
    );
  }
}
