import 'package:cv_maker/components/cardTemplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExperienceData extends StatelessWidget {
  const ExperienceData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
            child: const SingleChildScrollView(
                child: CardTemplate(
              titleText: "Harvards University",
              subText: "Bachelors in computing",
              dateText: "Feb 2018 - Feb 2021",
            ))),
      ),
    );
  }
}
