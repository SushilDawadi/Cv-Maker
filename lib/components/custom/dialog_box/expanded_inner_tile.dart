import 'package:cv_maker/assets/colors/color.dart';

import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedInnerContent extends StatelessWidget {
  final String innerText;
  final String innerSubText;
  const ExpandedInnerContent(
      {super.key, required this.innerText, required this.innerSubText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.only(
        left: 6,
        right: 5,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    innerText,
                    style: boldTextStyleBlack,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Text(
                      innerSubText,
                      style: subTextStylebold,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12.5.r),
                ),
                child: Icon(
                  Icons.close,
                  color: white,
                  size: 20.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
