import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsContainer extends StatelessWidget {
  final String subText;
  final String contentText;

  const DetailsContainer(
      {super.key, required this.subText, required this.contentText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.w, right: 17.w),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: textFieldInputColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: containerBackgroundColor),
              child: Padding(
                padding: EdgeInsets.only(left: 14.w, top: 27.h, right: 32.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subText,
                      style: subTextStyle,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 28.h),
                      child: Text(
                        contentText,
                        style: mainTextStyle,
                      ),
                    ),
                    SizedBox(height: Get.height * 0.2)
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
