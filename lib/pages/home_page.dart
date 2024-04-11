import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/my_custom_bottom_bar.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/components/custom/my_custom_template_heading.dart';
import 'package:cv_maker/components/custom/my_custom_template_tile.dart';
import 'package:cv_maker/pages/add_category_template_page.dart';
import 'package:cv_maker/pages/all_template_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        showDropButton: true,
        showUserDetails: false,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddCategoryTemplate(),
            ),
          );
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: containerPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyCustomHeadingText(
                      titleText: "Complete Setup",
                      width: 370.w,
                      subText:
                          "Provide with additional details to complete setup",
                      showTemplateImage: false,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
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
                                child:
                                    Text("1 out of 4", style: headingTextStyle),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 27.w, bottom: 32.h),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15.h),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AllTemplatePage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 45.w,
                                            vertical: 10.h,
                                          ),
                                          child: Text("Complete",
                                              style: homeButtonTextStyle),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
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
                                style: percentTextStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    const MyCustomTemplateHeading(
                      titleText: "Lastest Templates",
                    ),
                    const MyCustomTemplateTile(),
                    SizedBox(
                      height: 28.h,
                    ),
                    const MyCustomTemplateHeading(
                      titleText: "Popular Templates",
                    ),
                    const MyCustomTemplateTile(),
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
