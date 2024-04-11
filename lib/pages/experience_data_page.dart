import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/my_custom_card_template.dart';
import 'package:flutter/material.dart';

class ExperienceData extends StatelessWidget {
  const ExperienceData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: containerPadding,
          child: const SingleChildScrollView(
            child: Column(
              children: [
                MyCustomCardTemplate(
                  forEducation: false,
                  titleText: "Developer’s Hub",
                  subText: "Senior Software Developer",
                  dateText: "Feb 2021 - Current",
                ),
                MyCustomCardTemplate(
                  forEducation: false,
                  titleText: "IT Solutions",
                  subText: "Junior Developer",
                  dateText: "Feb 2018 - Sep 2021",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
