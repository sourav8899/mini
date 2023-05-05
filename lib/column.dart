import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Mycol extends StatelessWidget {
  final String text;
  final iconimage;
  Mycol({required this.text, required this.iconimage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          iconimage,
          height: 400,
        ),
        Text(text),
      ],
    );
  }
}
