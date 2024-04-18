import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/slider/my_custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DifficultyDialog extends StatelessWidget {
  final String titleText;
  final String subText;
  final String valueText;
  const DifficultyDialog(
      {super.key,
      required this.titleText,
      required this.subText,
      required this.valueText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20.h, top: 15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 23.w,
                ),
                child: Text(
                  titleText,
                  style: boldTextStyleBlack,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12.5.r),
                ),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.close,
                    color: white,
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 23.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 13),
                child: Text(
                  subText,
                  style: dialogSubText,
                ),
              ),
              Text(valueText, style: mainTextStyle),
              const Divider(
                color: Colors.grey,
                thickness: 0.2,
              ),
              Text("Set Level", style: dialogSubText),
            ],
          ),
        ),
        const MyCustomSlider(),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Beginner",
                  style: dialogSubText,
                ),
                Text(
                  "Intermediate",
                  style: dialogSubText,
                ),
                Text(
                  "Expert",
                  style: dialogSubText,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 23.w),
          child: MyButton(
            text: "Add",
            fontSize: 20.sp,
            value: 1,
            showIcon: false,
            borderColor: false,
          ),
        )
      ],
    );
  }
}
