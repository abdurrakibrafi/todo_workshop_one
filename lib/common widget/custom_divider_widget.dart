import 'package:flutter/material.dart';

import '../uitilies/app_colors.dart';
import 'custom text/custom_text_widget.dart';

class CustomDividerWidget extends StatelessWidget {
  final String text;

  const CustomDividerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: AppColors.mainColor,
          height: 1.5,
          width: 130,
        ),
        CustomText(
          text: text,
        ),
        Container(
          color: AppColors.mainColor,
          height: 1.5,
          width: 130,
        ),
      ],
    );
  }
}
