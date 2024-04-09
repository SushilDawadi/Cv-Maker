import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDetailsContainer extends StatelessWidget {
  final String titleText;
  final String subText;

  final String subtitleTextOne;
  final String subtitleTextTwo;
  final String innerTextOne;
  final String innerTextTwo;
  final String innerTextthree;
  final String innerTextfour;

  const MyDetailsContainer({
    super.key,
    required this.titleText,
    required this.subText,
    required this.subtitleTextOne,
    required this.innerTextOne,
    required this.innerTextTwo,
    required this.subtitleTextTwo,
    required this.innerTextthree,
    required this.innerTextfour,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 383.w,
      height: 250.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: textFieldInputColor,
          width: 1.w,
        ),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 11.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleText,
              style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 16.sp,
                  color: subTextColor,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              subText,
              style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 12.sp,
                  color: subTextColor,
                  fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Text(
                subtitleTextOne,
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 12.sp,
                    color: subTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              innerTextOne,
              style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 12.sp,
                  color: subTextColor,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              innerTextTwo,
              style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 12.sp,
                  color: subTextColor,
                  fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Text(
                subtitleTextTwo,
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 12.sp,
                    color: subTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              innerTextthree,
              style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 12.sp,
                  color: subTextColor,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              innerTextfour,
              style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 12.sp,
                  color: subTextColor,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
