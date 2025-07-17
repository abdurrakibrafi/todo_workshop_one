// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'custom text/custom_text_widget.dart';

class NotFoundWidget extends StatelessWidget {
  final String title;
  final double width;

  const NotFoundWidget({super.key, required this.title, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage("assets/images/data.png"),
          width: width,
        ),
        Center(
          child: CustomText(
            textAlign: TextAlign.center,
            text: title,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
