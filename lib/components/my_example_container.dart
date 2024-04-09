import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyExampleContainer extends StatelessWidget {
  const MyExampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 229.w,
      height: 301.h,
      decoration: BoxDecoration(
        color: textFieldInputColor,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: textFieldInputColor,
        ),
      ),
      child: SizedBox(
        width: 203.w,
        height: 207.h,
        child: Padding(
            padding: EdgeInsets.only(left: 11.0.w, top: 16.0.h, right: 15.0.w),
            child: Column(
              children: [
                Text(
                  "I am an enthusiastic, self-motivated, reliable, responsible and hard working person. I am a mature team worker and adaptable to all challenging situations. I am able to work well both in a team environment as well as using own initiative. I am able to work well under pressure and adhere to strict deadlines.",
                  style: TextStyle(fontFamily: fontFamily, fontSize: 12.sp),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: Container(
                    decoration: BoxDecoration(
                      color: white,
                      border: Border.all(
                        color: primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    width: 164.w,
                    height: 39.h,
                    child: Center(
                        child: Text(
                      "Set",
                      style: TextStyle(
                          color: primaryColor,
                          fontFamily: fontFamily,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
