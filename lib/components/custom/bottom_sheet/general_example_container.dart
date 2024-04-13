import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralExampleContainer extends StatelessWidget {
  const GeneralExampleContainer({super.key});

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
                const MyTextField(
                  hintText: "John",
                  icon: Icons.person,
                  value: 1,
                ),
                const MyTextField(
                  hintText: "Something",
                  icon: Icons.person,
                  value: 1,
                ),
                const MyTextField(
                  hintText: "Doe",
                  icon: Icons.person,
                  value: 1,
                ),
                const MyTextField(
                  hintText: "123 Main Street, apt 4B",
                  icon: Icons.location_on,
                  value: 1,
                ),
                const MyTextField(
                  hintText: "0198787827",
                  icon: Icons.phone,
                  value: 1,
                ),
                const MyTextField(
                  hintText: "johndoe@example.com",
                  icon: Icons.mail,
                  value: 1,
                ),
                const MyTextField(
                  hintText: "Software Engineer",
                  icon: Icons.work,
                  value: 1,
                ),
                const MyTextField(
                  hintText: "https://linktoyourportfolio.com",
                  icon: Icons.link,
                  value: 1,
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
