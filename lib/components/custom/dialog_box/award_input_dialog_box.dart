import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AwardInputDialogBox extends StatelessWidget {
  final String titleText;
  const AwardInputDialogBox({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          Padding(
            padding: EdgeInsets.only(top: 26.h),
            child: const MyTextField(
              wValue: 1,
              hValue: 0.062,
              hintText: "Award/Certificate Name",
              icon: Icons.featured_play_list,
            ),
          ),
          const MyTextField(
            wValue: 1,
            hValue: 0.062,
            hintText: "Award/Certificate Number",
            icon: Icons.format_list_numbered,
          ),
          SizedBox(height: Get.height * 0.019),
          MyButton(
            text: "Add",
            fontSize: 20.sp,
            value: 1,
            showIcon: false,
            borderColor: false,
          )
        ],
      ),
    );
  }
}
