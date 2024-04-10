import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBottomSheetDetails extends StatelessWidget {
  final String subtext;
  final String contentSub;
  final String? contentMain;
  const MyBottomSheetDetails(
      {super.key,
      required this.subtext,
      this.contentMain,
      required this.contentSub});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 29.h),
                  child: Container(
                    width: 65.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(99.5.r),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "Help with example",
              style: TextStyle(
                  fontFamily: fontFamily,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 3.h,
                bottom: 39.h,
              ),
              child: Text(
                subtext,
                style: TextStyle(
                    fontFamily: fontFamily,
                    color: subTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Details"),
                ),
                Text("Example"),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: textFieldInputColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 14.w, top: 27.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                        "Your general information should include your contact information ."),
                    Padding(
                        padding: EdgeInsets.only(top: 28.h),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 25.0.h),
                              child: Text(
                                contentMain!,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.sp),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
