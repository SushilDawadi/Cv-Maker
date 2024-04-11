import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/my_custom_card_template.dart';
import 'package:flutter/material.dart';

class EducationData extends StatelessWidget {
  const EducationData({super.key});

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
          ),
        ),
      ),
    );
  }
}
