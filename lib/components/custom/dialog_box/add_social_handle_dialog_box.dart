import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddSocialHandle extends StatelessWidget {
  const AddSocialHandle({super.key});

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
              Text(
                "Add Social Handles",
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
                    color: white,
                    size: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 13),
              child: Text(
                "Selected Skill",
                style: dialogSubText,
              ),
            ),
            Text("Facebook", style: mainTextStyle),
            const Divider(
              color: Colors.grey,
              thickness: 0.2,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Text("Enter Link URL*", style: dialogSubText),
            ),
            const MyTextField(
                hintText: "https://link.com",
                icon: Icons.link,
                wValue: 1,
                hValue: 0.062),
            MyButton(
              text: "Add",
              fontSize: 20.sp,
              value: 1,
              showIcon: false,
              borderColor: false,
            )
          ],
        ),
      ],
    );
  }
}
