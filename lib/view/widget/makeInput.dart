// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';


class makeInput extends StatelessWidget {
  final String label;
  final bool obscureText;

  final String? Function(String?) validator;
  final TextEditingController? controller;
  final Function(String)? onchange;

  makeInput(
      {required this.label,
      this.controller,
      required this.obscureText,
      this.onchange,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style:  TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Get.isDarkMode ? Colors.white : Color(0xFF030338)),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          onChanged: onchange,
          validator: validator,
          controller: controller,
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),


          ),

        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
