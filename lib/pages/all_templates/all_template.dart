import 'package:cv_maker/components/bottomBar.dart';
import 'package:cv_maker/components/myTemplateHeading.dart';
import 'package:cv_maker/components/my_appbar.dart';
import 'package:cv_maker/components/template_title.dart';
import 'package:cv_maker/pages/single_category_Template/single_category_Template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllTemplatePage extends StatelessWidget {
  const AllTemplatePage({super.key});

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
                    MyAppBar(
                      titleText: "Find templates",
                      subText:
                          "Find suitable templates based on your requirement.",
                      showDropButton: true,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SingleCategoryTemplate()));
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const MyTemplateHeading(
                      titleText: "Basic",
                      seeAllText: "See All",
                    ),
                    const MyTemplateTile(),
                    SizedBox(
                      height: 28.h,
                    ),
                    const MyTemplateHeading(
                      titleText: "Professional",
                      seeAllText: "See All",
                    ),
                    const MyTemplateTile(),
                    SizedBox(
                      height: 28.h,
                    ),
                    const MyTemplateHeading(
                      titleText: "Educational",
                      seeAllText: "See All",
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
