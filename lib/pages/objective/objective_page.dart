import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:cv_maker/components/bottomBar.dart';
import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/my_example_container.dart';
import 'package:cv_maker/components/my_name_app_Bar.dart';
import 'package:cv_maker/components/my_nav_title.dart';
import 'package:cv_maker/pages/EducationEmpty/education_empty.dart';
import 'package:cv_maker/pages/ExperienceEmpty/experience_empty.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Objective extends StatelessWidget {
  const Objective({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const MyNameAppBar(
                      isHorizontal: false,
                      showImage: false,
                      showText: false,
                    ),
                    const MyNavTitle(),
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
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 12.sp,
                            color: iconColor),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15.h),
                  child: Text(
                    "Examples",
                    style: TextStyle(
                        fontFamily: fontFamily,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500),
                  ),
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
                        text: "Help",
                        width: 129.w,
                        fontSize: 20.sp,
                        borderColor: true,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EducationEmpty(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 115.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 19.h),
                      child: MyButton(
                        text: "Next",
                        width: 129.w,
                        fontSize: 20.sp,
                        borderColor: false,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ExperienceEmpty(),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 31.h,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
