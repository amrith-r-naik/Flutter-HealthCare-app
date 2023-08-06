// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {
  final String emoticonFace;
  const EmoticonFace({super.key, required this.emoticonFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(50, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(14),
      child: Text(
        emoticonFace,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
