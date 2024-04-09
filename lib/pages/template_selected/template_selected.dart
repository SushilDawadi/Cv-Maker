import 'package:cv_maker/assets/fonts/font.dart';
import 'package:cv_maker/components/bottomBar.dart';
import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/my_details_container.dart';
import 'package:cv_maker/components/my_name_app_Bar.dart';
import 'package:cv_maker/pages/general_information/general_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TemplateSelected extends StatelessWidget {
  const TemplateSelected({super.key});

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
                    const MyNameAppBar(
                      isHorizontal: true,
                      showImage: true,
                      showText: true,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50.h),
                      child: MyButton(
                        text: "Use new data",
                        width: 383.w,
                        fontSize: 20.sp,
                        borderColor: true,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GeneralInformation(),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 31.h),
                      child: Text(
                        "Saved details",
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
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
