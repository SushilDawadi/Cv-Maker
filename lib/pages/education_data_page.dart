import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/my_custom_botton.dart';
import 'package:cv_maker/components/custom/my_custom_card_template.dart';
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
              height: MediaQuery.of(context).size.height * 0.7.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      MyCustomCardTemplate(
                        forEducation: true,
                        titleText: "Harvards University",
                        subText: "Bachelors in computing",
                        dateText: "Feb 2018 - Feb 2021",
                      ),
                      MyCustomCardTemplate(
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
                        text: "Add+",
                        width: 129.w,
                        fontSize: 20.sp,
                        borderColor: true,
                      ),
                      MyButton(
                        text: "Next",
                        width: 129.w,
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
