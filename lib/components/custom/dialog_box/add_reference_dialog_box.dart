import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddReference extends StatelessWidget {
  const AddReference({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 7.0.w, bottom: 7.h),
                child: Text(
                  "Add Reference",
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
                    size: 20.sp,
                    color: white,
                  ),
                ),
              ),
            ],
          ),
          const MyTextField(
            wValue: 1,
            hValue: 0.062,
            hintText: "Name",
            icon: Icons.person,
          ),
          const MyTextField(
            wValue: 1,
            hValue: 0.062,
            hintText: "Company",
            icon: Icons.contact_mail,
          ),
          const MyTextField(
              wValue: 1,
              hValue: 0.062,
              hintText: "Job title",
              icon: Icons.work),
          const MyTextField(
              wValue: 1, hValue: 0.062, hintText: "Phone", icon: Icons.phone),
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
