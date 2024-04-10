import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:cv_maker/components/bottomBar.dart';
import 'package:cv_maker/pages/TabPages/education_empty_tab.dart';
import 'package:cv_maker/pages/TabPages/experience_empty_tab.dart';
import 'package:cv_maker/pages/TabPages/general_information_tab.dart';
import 'package:cv_maker/pages/TabPages/objective_page_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: white,
          leading: Padding(
            padding: EdgeInsets.only(left: 27.w),
            child: Image.asset(
              'lib/assets/images/cvMaker.png',
              width: 48.w,
              height: 48.h,
            ),
          ),
          leadingWidth: 100.w,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 27.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Text(
                      "Subtle Me ",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: Text(
                      "Basic  •  Prasiddha Nepane",
                      style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 14.sp,
                          color: subTextColor),
                    ),
                  ),
                ],
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(48.h),
            child: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.transparent,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: tabTitleColor,
              ),
              tabs: [
                Tab(text: 'General Information'),
                Tab(text: 'Objective'),
                Tab(text: 'Education'),
                Tab(text: 'Experience'),
                Tab(text: 'Projects'),
                Tab(text: 'Additional'),
                Tab(text: 'Export'),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            GeneralInformation(),
            Objective(),
            EducationEmpty(),
            ExperienceEmpty(),
          ],
        ),
        bottomNavigationBar: MyBottomBar(),
      ),
    );
  }
}