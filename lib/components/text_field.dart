import 'package:cv_maker/assets/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const MyTextField({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: TextField(
        style: TextStyle(
          fontSize: 16.sp,
          color: black,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 16.sp,
              color: hinttextColor,
              fontWeight: FontWeight.w400),
          suffixIcon: Icon(
            icon,
            color: iconColor,
            size: 20.h,
            weight: 400,
          ),
        ),
      ),
    );
  }
}
