import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/bottom_sheet/objective_bottom_sheet.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/container/my_custom_example_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Objective extends StatelessWidget {
  const Objective({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
      child: Material(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 402.w,
                height: 219.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.r),
                  border: Border.all(
                    color: const Color(0xffE5E5E5),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 18.h, left: 16.h),
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText:
                          "Write something about yourself, career aspirations or goals",
                      hintStyle: TextStyle(
                        color: iconColor,
                        fontSize: 14.sp,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.w,
                        vertical: 20.h,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.0.h, bottom: 23.h),
                child: Text(
                  "0/700",
                  style: subTextIconOne,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: Text("Examples", style: blackTextStyle),
                  ),
                  SizedBox(
                    height: 301.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 9.0.h),
                          child: const MyExampleContainer(),
                        ),
                        const MyExampleContainer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 34.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 19.h),
                        child: MyButton(
                          showIcon: false,
                          text: "Help",
                          value: 0.3,
                          fontSize: 20.sp,
                          borderColor: true,
                          onPressed: () {
                            Get.bottomSheet(
                                isScrollControlled: true,
                                SizedBox(
                                  width: Get.width,
                                  height: Get.height * 0.75,
                                  child: MyObjectiveBottomSheetContent(),
                                ));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 115.w,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 19.h),
                        child: MyButton(
                          showIcon: false,
                          text: "Next",
                          value: 0.3,
                          fontSize: 20.sp,
                          borderColor: false,
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 31.h,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
