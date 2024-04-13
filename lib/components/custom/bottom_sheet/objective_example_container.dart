import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ObjectiveExampleContainer extends StatelessWidget {
  const ObjectiveExampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 14.w, right: 32.w),
        child: Container(
          decoration: BoxDecoration(
            color: containerBackgroundColor,
            border: Border.all(
              color: textFieldInputColor,
            ),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 22.h,
              left: 5.w,
              right: 7.w,
            ),
            child: Column(
              children: [
                Text(
                  "I am an enthusiastic, self-motivated, reliable, responsible and hard working person. I am a mature team worker and adaptable to all challenging situations. I am able to work well both in a team environment as well as using own initiative. I am able to work well under pressure and adhere to strict deadlines.",
                  style: subTextStyle,
                ),
                MyButton(
                  text: "Use example",
                  fontSize: 20.sp,
                  value: 0.45,
                  showIcon: false,
                  borderColor: false,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
