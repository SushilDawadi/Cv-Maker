import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomHeadingText extends StatelessWidget {
  final String titleText;
  final String subText;
  final bool? showTemplateImage;
  final double? width;
  const MyCustomHeadingText(
      {super.key,
      required this.titleText,
      required this.subText,
      this.showTemplateImage,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              width: width,
              child: Text(
                subText,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: fontFamily,
                    color: subTextColor),
              ),
            ),
          ],
        ),
        showTemplateImage!
            ? Image.asset(
                'lib/assets/images/template4.jpg',
                width: 90.w,
                height: 127.h,
              )
            : Container()
      ],
    );
  }
}
