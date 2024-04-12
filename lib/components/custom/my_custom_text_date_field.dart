import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomDateFiedl extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
  final double value;
  final void Function()? onTap;

  const MyCustomDateFiedl(
      {super.key,
      required this.hintText,
      required this.icon,
      this.controller,
      required this.value,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Container(
        width: MediaQuery.of(context).size.width * value,
        decoration: BoxDecoration(
            border: Border.all(
              color: textFieldInputColor,
            ),
            borderRadius: BorderRadius.circular(12.r)),
        child: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: TextField(
            onTap: () {
              onTap!();
            },
            controller: controller,
            style: TextStyle(
              fontSize: 16.sp,
              color: black,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: hintTextStyle,
              suffixIcon: Icon(
                icon,
                color: iconColor,
                size: 20.h,
                weight: 400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
