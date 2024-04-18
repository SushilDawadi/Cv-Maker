import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/card/my_custom_card_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EducationData extends StatelessWidget {
  const EducationData({super.key});

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
                        forEducation: true,
                        titleText: "Harvards University",
                        subText: "Bachelors in computing",
                        dateText: "Feb 2018 - Feb 2021",
                      ),
                      MyCustomCardTemplate(
                        forProject: false,
                        forEducation: true,
                        titleText: "Step By Step Secondary School",
                        subText: "Bachelors in computing",
                        dateText: "Feb 2018 - Feb 2021",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyButton(
                        showIcon: false,
                        text: "Add+",
                        value: 0.3,
                        fontSize: 20.sp,
                        borderColor: true,
                      ),
                      MyButton(
                        showIcon: false,
                        text: "Next",
                        value: 0.3,
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
