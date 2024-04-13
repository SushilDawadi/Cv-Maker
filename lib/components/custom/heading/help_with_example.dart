import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelpWithExamples extends StatelessWidget {
  const HelpWithExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 14, bottom: 29.0),
            child: Container(
              width: 65,
              height: 5,
              decoration: BoxDecoration(
                color: black,
                borderRadius: BorderRadius.circular(99.5.r),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.h),
          child: Text(
            "Help with Examples",
            style: bottomSheetheadingStyle,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Text(
            "Help to fill out the details related to your general and personal information.",
            style: subTextStyle,
          ),
        ),
      ],
    );
  }
}
