import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common widget/custom text/custom_text_widget.dart';
import '../uitilies/app_colors.dart';

class CustomDropdown extends StatelessWidget {
  final String label;
  final String hint;
  final String value;
  final List<String> items;
  final Function(String?) onChanged;

  const CustomDropdown({
    required this.label,
    required this.hint,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        DropdownButtonFormField<String>(
          value: value,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.mainColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.mainColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
            ),
          ),
          items: items
              .map(
                (item) => DropdownMenuItem<String>(
                    value: item,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(width: 8),
                        CustomText(
                          text: item,
                          color: Colors.black,
                          fontSize: 12.h,
                        ),
                      ],
                    )),
              )
              .toList(),
        ),
      ],
    );
  }
}
