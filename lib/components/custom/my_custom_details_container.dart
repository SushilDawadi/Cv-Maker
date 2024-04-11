import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
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
              style: mainTextStyle1,
            ),
            Text(
              subText,
              style: subTextStylethin,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Text(
                subtitleTextOne,
                style: subTextStylebold,
              ),
            ),
            Text(
              innerTextOne,
              style: subTextStylethin,
            ),
            Text(
              innerTextTwo,
              style: subTextStylethin,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Text(
                subtitleTextTwo,
                style: subTextStylebold,
              ),
            ),
            Text(
              innerTextthree,
              style: subTextStylethin,
            ),
            Text(innerTextfour, style: subTextStylethin),
          ],
        ),
      ),
    );
  }
}
