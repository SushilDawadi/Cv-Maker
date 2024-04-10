import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomTemplateHeading extends StatelessWidget {
  final String titleText;
  final String? seeAllText;
  const MyCustomTemplateHeading(
      {super.key, required this.titleText, this.seeAllText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: TextStyle(
              fontSize: 16.sp,
              fontFamily: fontFamily,
              fontWeight: FontWeight.w600),
        ),
        Text(
          seeAllText ?? "",
          style: TextStyle(
              fontFamily: fontFamily,
              fontSize: 12.sp,
              color: textColor,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
