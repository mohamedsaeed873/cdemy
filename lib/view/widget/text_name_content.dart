
import 'package:flutter/material.dart';

class NameContent extends StatelessWidget {
  final String nametext;
  final String seetext;

  const NameContent({super.key, required this.nametext, required this.seetext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text(
            nametext,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              seetext,
              style: const TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}