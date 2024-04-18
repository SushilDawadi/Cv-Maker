import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResearchDialog extends StatelessWidget {
  const ResearchDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Add Research Works",
              style: boldTextStyleBlack,
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
                  size: 20.sp,
                  color: white,
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: const MyTextField(
                wValue: 1,
                hValue: 0.062,
                hintText: "Publication",
                icon: Icons.featured_play_list,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: textFieldInputColor),
                borderRadius: BorderRadius.circular(12.5.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: TextField(
                  maxLines: 2,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Description",
                    hintStyle: hintTextStyle,
                    counterText: "",
                    suffixIcon: Icon(
                      Icons.format_list_numbered,
                      size: 20.sp,
                    ),
                  ),
                ),
              ),
            ),
            Text("0/150 words", style: subTextStylethin),
          ],
        ),
        MyButton(
          text: "Add",
          fontSize: 20.sp,
          value: 1,
          showIcon: false,
          borderColor: false,
        )
      ],
    );
  }
}
