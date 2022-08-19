// ignore_for_file: file_names

import 'package:cdemy/core/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomLanguage extends StatelessWidget {
  final String? name;
  final void Function()? onPressed;
  // ignore: use_key_in_widget_constructors
  const CustomLanguage( {
     this.name, 
     this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 150,
      decoration: BoxDecoration(
          color: AppColor.primary,
          borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          name!,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
