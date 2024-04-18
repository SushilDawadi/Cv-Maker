import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/card/my_custom_card_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceData extends StatelessWidget {
  const ExperienceData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: containerPadding,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      MyCustomCardTemplate(
                        forProject: false,
                        forEducation: false,
                        titleText: "Developer’s Hub",
                        subText: "Senior Software Developer",
                        dateText: "Feb 2021 - Current",
                      ),
                      MyCustomCardTemplate(
                        forProject: false,
                        forEducation: false,
                        titleText: "IT Solutions",
                        subText: "Junior Developer",
                        dateText: "Feb 2018 - Sep 2021",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        showIcon: false,
                        text: "Add+",
                        value: 0.3.h,
                        fontSize: 20.sp,
                        borderColor: true,
                      ),
                      MyButton(
                        showIcon: false,
                        text: "Next",
                        value: 0.3.h,
                        fontSize: 20.sp,
                        borderColor: false,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
