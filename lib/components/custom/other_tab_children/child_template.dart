import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildTemplate extends StatelessWidget {
  final String titleText;
  final String contentText;
  const ChildTemplate(
      {super.key, required this.titleText, required this.contentText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: containerBackgroundColor,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 3.w, top: 6.h, right: 8.w, bottom: 11.h),
        child: Container(
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        titleText,
                        style: boldTextStyleBlack,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(12.5.r),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.close,
                            color: white,
                            size: 20.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    contentText,
                    style: subTextStylebold,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
