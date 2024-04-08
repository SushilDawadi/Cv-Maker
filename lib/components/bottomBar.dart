import 'package:cv_maker/assets/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButtonBar extends StatelessWidget {
  const MyButtonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.h,
      width: 430.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: textFieldInputColor,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Icon(
            Icons.home_outlined,
            size: 35.w,
          ),
          Icon(
            Icons.copy_outlined,
            size: 35.w,
          )
        ],
      ),
    );
  }
}
