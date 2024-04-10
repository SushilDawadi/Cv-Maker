import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomAppBar extends StatelessWidget {
  final bool? showDropButton;
  final String titleText;
  final String subText;
  const MyCustomAppBar(
      {super.key,
      this.showDropButton,
      required this.titleText,
      required this.subText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset(
        'lib/assets/images/cvMaker.png',
        width: 48.w,
        height: 48.h,
      ),
      leadingWidth: 100.w,
      actions: [
        Column(
          children: [
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
        )
      ],
    );
  }
}
