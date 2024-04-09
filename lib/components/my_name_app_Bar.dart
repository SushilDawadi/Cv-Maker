import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNameAppBar extends StatelessWidget {
  final bool isHorizontal;
  final bool? showImage;
  final bool? showText;
  const MyNameAppBar({
    super.key,
    required this.isHorizontal,
    this.showImage,
    this.showText,
  });

  @override
  Widget build(BuildContext context) {
    return isHorizontal ? buildHorizontalAppBar() : buildVerticalAppBar();
  }

  Widget buildHorizontalAppBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 70.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'lib/assets/images/cvMaker.png',
              width: 48.w,
              height: 48.h,
            ),
            SizedBox(
              height: 17.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 250.w,
                    height: 170.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.h),
                          child: Text(
                            "Subtle Me ",
                            style: TextStyle(
                                fontSize: 24.sp,
                                fontFamily: fontFamily,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 11.h),
                          child: Text(
                            "Basic  •  Prasiddha Nepane",
                            style: TextStyle(
                                fontFamily: fontFamily,
                                fontSize: 14.sp,
                                color: subTextColor),
                          ),
                        ),
                        showText!
                            ? Text(
                                "This template is designed for you to introduce yourself in very basic but subtle manner.",
                                style: TextStyle(
                                    fontFamily: fontFamily,
                                    fontSize: 14.sp,
                                    color: subTextColor),
                              )
                            : Container(),
                      ],
                    )),
                showImage!
                    ? Image.asset(
                        'lib/assets/images/template4.jpg',
                        width: 90.w,
                        height: 127.h,
                      )
                    : Container()
              ],
            ),
          ],
        )
      ],
    );
  }

  Widget buildVerticalAppBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 70.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'lib/assets/images/cvMaker.png',
              width: 48.w,
              height: 48.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Subtle Me",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 11.h),
                  child: Text(
                    "Basic  •  Prasiddha Nepane",
                    style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 14.sp,
                        color: subTextColor),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
