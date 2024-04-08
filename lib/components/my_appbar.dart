import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget {
  final String titleText;
  final String subText;
  const MyAppBar({super.key, required this.titleText, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 70.h,
        ),
        Image.asset(
          'lib/assets/images/cvMaker.png',
          width: 62.w,
          height: 62.h,
        ),
        SizedBox(
          height: 30.h,
        ),
        Text(
          titleText,
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w600,
            fontFamily: fontFamily,
            color: black,
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          subText,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              fontFamily: fontFamily,
              color: subTextColor),
        ),
      ],
    );
  }
}