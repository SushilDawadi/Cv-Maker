import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomButtonWithBottomSheet extends StatelessWidget {
  final String subtext;
  final String contentSub;
  final String? contentMain;
  final String buttonText;
  const MyCustomButtonWithBottomSheet(
      {super.key,
      required this.subtext,
      required this.contentSub,
      this.contentMain,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
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
                            color: black,
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
                          Text(
                            contentSub,
                            style: TextStyle(
                              fontFamily: fontFamily,
                              fontSize: 14.sp,
                              color: subTextColor,
                            ),
                          ),
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: const BorderSide(color: primaryColor)),
        ),
        foregroundColor: MaterialStateProperty.all(primaryColor),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: 34.w, vertical: 15.h),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
            fontSize: 18.sp,
            fontFamily: fontFamily,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
