import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/my_custom_bottom_bar.dart';
import 'package:cv_maker/components/custom/my_custom_botton.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/components/custom/my_custom_details_container.dart';
import 'package:cv_maker/pages/tabpages/tab_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TemplateSelected extends StatelessWidget {
  const TemplateSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(
        showDropButton: false,
        showUserDetails: false,
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
                        titleText: "Subtle me",
                        width: 250.w,
                        showTemplateImage: true,
                        subText:
                            "Basic  •  Prasiddha Nepane\n\nThis template is designed for you to introduce yourself in very basic but subtle manner."),
                    Padding(
                      padding: EdgeInsets.only(top: 50.h),
                      child: MyButton(
                        showIcon: false,
                        text: "Use new data",
                        value: 1,
                        fontSize: 20.sp,
                        borderColor: true,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyCustomTabBar(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 31.h),
                      child: Text(
                        "Saved details",
                        style: mainTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 17.h),
                      child: const MyDetailsContainer(
                          titleText: "Prasiddha Neupane",
                          subText: "Software Engineer",
                          subtitleTextOne: "Education",
                          innerTextOne: "  •  BSc (Hons) Computing (ICP) )",
                          innerTextTwo:
                              "  •  High School (Step by Step Secondary School",
                          subtitleTextTwo: "Experience",
                          innerTextthree:
                              "  •  Senior React and React Native Developer (Resimator Oy)",
                          innerTextfour:
                              "  •  Full Stack Developer (Everart Technolories)"),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 17.h),
                      child: const MyDetailsContainer(
                          titleText: "Yashwindar Singh",
                          subText: "Software Engineer",
                          subtitleTextOne: "Education",
                          innerTextOne: "  •  BSc (Hons) Computing (ICP) )",
                          innerTextTwo:
                              "  •  High School (Step by Step Secondary School",
                          subtitleTextTwo: "Experience",
                          innerTextthree:
                              "  •  Senior React and React Native Developer (Resimator Oy)",
                          innerTextfour:
                              "  •  Full Stack Developer (Everart Technolories)"),
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
