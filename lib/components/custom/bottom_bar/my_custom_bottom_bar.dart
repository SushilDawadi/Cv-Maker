import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/pages/authview/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 15.h),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: textFieldInputColor,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Get.offAll(
                    () => const HomePage(),
                  );
                },
                icon: Icon(
                  Icons.home_rounded,
                  size: 38.sp,
                  color: primaryColor,
                ),
              ),
              SizedBox(
                width: 68.w,
              ),
              Icon(
                Icons.copy_outlined,
                size: 35.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
