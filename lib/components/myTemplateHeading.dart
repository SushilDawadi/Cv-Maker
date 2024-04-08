import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTemplateHeading extends StatelessWidget {
  final String titleText;
  const MyTemplateHeading({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
          fontSize: 16.sp, fontFamily: fontFamily, fontWeight: FontWeight.w600),
    );
  }
}
