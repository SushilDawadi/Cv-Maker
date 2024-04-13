import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/components/custom/app_bar/my_custom_app_bar.dart';
import 'package:cv_maker/pages/tabpages/education_empty_tab.dart';
import 'package:cv_maker/pages/tabpages/experience_empty_tab.dart';
import 'package:cv_maker/pages/tabpages/general_information_tab.dart';
import 'package:cv_maker/pages/tabpages/objective_page_tab.dart';
import 'package:cv_maker/pages/authview/education_data_page.dart';
import 'package:cv_maker/pages/authview/experience_data_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomTabBar extends StatefulWidget {
  const MyCustomTabBar({super.key});

  @override
  State<MyCustomTabBar> createState() => _MyCustomTabBarState();
}

class _MyCustomTabBarState extends State<MyCustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(
        showDropButton: false,
        showUserDetails: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          children: [
            // HelpWithExamples(),
            // give the tab bar a height [can change hheight to preferred height]
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: TabBar(
                isScrollable: true,
                controller: _tabController,
                labelColor: black,
                labelStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.black38,
                tabs: const [
                  Tab(
                    child: Text(
                      "General Information",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Objective",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Education",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Experience",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Projects",
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Additional",
                    ),
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  // first tab bar view widget
                  GeneralInformation(),
                  Objective(),
                  EducationEmpty(),
                  ExperienceEmpty(),
                  ExperienceData(),
                  EducationData(),
                  // second tab bar view widget
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
