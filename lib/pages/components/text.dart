import 'package:cv_maker/assets/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyText extends StatelessWidget {
  final String text;
  const MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.w600,
          fontSize: 14.sp,
        ));
  }
}
