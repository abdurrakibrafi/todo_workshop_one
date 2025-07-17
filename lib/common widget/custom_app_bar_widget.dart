import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? fontSize;
  final bool centerTitle;
  final Color? backgroundColor;
  final bool forceMaterialTransparency;
  final bool? automaticallyImplyLeading;
  final List<Widget>? actions;
  final Widget? leading;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.fontSize,
    this.centerTitle = true,
    this.backgroundColor = Colors.transparent,
    this.forceMaterialTransparency = true,
    this.actions,
    this.leading,
    this.automaticallyImplyLeading,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: true,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: fontSize ?? 17.h,
          fontWeight: FontWeight.w500,
        ),
      ),
      centerTitle: centerTitle,
      actions: actions,
      leading: leading ??
          Directionality(
            textDirection: TextDirection.ltr,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Get.back(); // Navigate to the previous screen
              },
            ),
          ),
      elevation: forceMaterialTransparency ? 0 : null,
    );
  }
}
