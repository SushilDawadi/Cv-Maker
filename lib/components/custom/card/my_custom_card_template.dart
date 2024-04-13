import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomCardTemplate extends StatelessWidget {
  final String titleText;
  final String subText;
  final String dateText;
  final bool forEducation;
  const MyCustomCardTemplate(
      {super.key,
      required this.titleText,
      required this.subText,
      required this.dateText,
      required this.forEducation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 9.h),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: textFieldInputColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
              child: Container(
                decoration: BoxDecoration(
                  color: textFieldInputColor,
                  borderRadius: BorderRadius.circular(9.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.w, vertical: 23.h),
                  child: Icon(
                    forEducation ? Icons.school : Icons.work,
                    color: primaryColor,
                    size: 40.sp,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 7.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleText,
                    style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: black),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 13.h),
                    child: Text(
                      subText,
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: subTextColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.0.h),
                    child: Text(
                      dateText,
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: primaryColor),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
