import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:cv_maker/components/custom/bottom_sheet/add_bottom_sheet_template.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyCustomErrorPageTemplate extends StatelessWidget {
  final String errorText;
  final void Function()? onPressed;
  final void Function()? onTap;
  final AddBottomSheetTemplate addBottomSheetTemplate;

  const MyCustomErrorPageTemplate({
    super.key,
    required this.errorText,
    this.onPressed,
    this.onTap,
    required this.addBottomSheetTemplate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.0.w, vertical: 10.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              SizedBox(
                height: 170.h,
              ),
              Icon(
                Icons.not_interested_rounded,
                size: 64.w,
                color: primaryColor,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: Text(
                  errorText,
                  style: TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              MyButton(
                  text: "Add",
                  fontSize: 20.sp,
                  value: 0.4.h,
                  showIcon: false,
                  borderColor: true,
                  onPressed: () => Get.bottomSheet(
                        addBottomSheetTemplate,
                        isScrollControlled: true,
                      ))
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 241.h,
                ),
                //add button with modal
                MyButton(
                  showIcon: false,
                  text: "Next",
                  value: 0.3.h,
                  fontSize: 20.sp,
                  borderColor: false,
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
