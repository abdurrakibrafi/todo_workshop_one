// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_button_widget.dart';

class CustomSuccessAlertDialog {
  static void showCustomDialog({
    required String title,
    required String content,
    required VoidCallback onConfirm,
  }) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon
              Icon(
                Icons.check_circle,
                color: Colors.blue,
                size: 90.h,
              ),
              SizedBox(height: 5.h),
              // Title
              Text(
                title,
                style: GoogleFonts.kumbhSans(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              // Content
              Text(
                content,
                style: GoogleFonts.kumbhSans(
                  fontSize: 14.sp,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              // Button
              SizedBox(
                height: 45,
                width: Get.width / 2.5,
                child: CustomButtonWidget(
                  btnTextColor: Colors.white,
                  btnText: "Go to Home",
                  onTap: onConfirm,
                  iconWant: false,
                ),
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: true,
    );
  }
}
