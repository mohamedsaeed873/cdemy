// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Custom_Button extends StatelessWidget {
  final String name;
  final Color color;
  final Function(String)? onPressed;



  const Custom_Button({required this.color,
    required this.name,
    this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 3, left: 3),
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
        onPressed: () {},
        color: color,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)),
        child: Text(
                name,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ),
    );
  }
}
