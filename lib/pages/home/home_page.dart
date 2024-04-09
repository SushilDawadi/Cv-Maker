import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:cv_maker/components/bottomBar.dart';
import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/myTemplateHeading.dart';
import 'package:cv_maker/components/my_appbar.dart';
import 'package:cv_maker/components/template_title.dart';
import 'package:cv_maker/pages/all_templates/all_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyAppBar(
                      titleText: "Compelete Setup",
                      subText:
                          "Provide with additional details to complete setup",
                      showDropButton: true,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      width: 405.w,
                      height: 150.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(
                          color: textFieldInputColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 51.w, top: 11.h),
                                child: Text(
                                  "1 out of 4",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: fontFamily,
                                      fontSize: 24.sp),
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 27.w, bottom: 32.h),
                                child: MyButton(
                                    borderColor: false,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AllTemplatePage(),
                                        ),
                                      );
                                    },
                                    text: "Complete",
                                    width: 164.w,
                                    height: 48.h,
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h, right: 22.w),
                            child: CircularPercentIndicator(
                              radius: 60.r,
                              lineWidth: 15.w,
                              percent: 0.3.r,
                              progressColor: primaryColor,
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: progressBarRadiusColor,
                              center: Text(
                                '25%',
                                style: TextStyle(
                                    fontFamily: fontFamily2,
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w900,
                                    color: progressBarTextColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const MyTemplateHeading(
                      titleText: "Lastest Templates",
                    ),
                    const MyTemplateTile(),
                    SizedBox(
                      height: 28.h,
                    ),
                    const MyTemplateHeading(
                      titleText: "Popular Templates",
                    ),
                    const MyTemplateTile(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
