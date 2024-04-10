import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardTemplate extends StatelessWidget {
  final String titleText;
  final String subText;
  final String dateText;
  const CardTemplate(
      {super.key,
      required this.titleText,
      required this.subText,
      required this.dateText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: textFieldInputColor),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 7.h),
            child: Container(
              decoration: BoxDecoration(
                  color: textFieldInputColor,
                  borderRadius: BorderRadius.circular(9.r)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 23.h),
                child: Icon(
                  Icons.work,
                  color: primaryColor,
                  size: 40.sp,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                titleText,
                style: TextStyle(
                    fontFamily: fontFamily,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: primaryColor),
              ),
              Text(subText),
              Padding(
                padding: EdgeInsets.only(bottom: 25.0.h),
                child: Text(dateText),
              ),
            ],
          )
        ],
      ),
    );
  }
}
