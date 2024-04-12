import 'package:cv_maker/pages/tabpages/education_empty_tab.dart';
import 'package:cv_maker/pages/education_data_page.dart';
import 'package:cv_maker/pages/tabpages/experience_empty_tab.dart';
import 'package:cv_maker/pages/experience_data_page.dart';
import 'package:cv_maker/pages/tabpages/general_information_tab.dart';
import 'package:cv_maker/pages/tabpages/objective_page_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utils {
  static final List<String> imgPath = [
    "lib/assets/images/templateImage1.jpg",
    "lib/assets/images/templateImage2.png",
    "lib/assets/images/templateImage3.png",
    "lib/assets/images/popular.png",
    "lib/assets/images/templateImage1.jpg",
    "lib/assets/images/templateImage1.jpg",
    "lib/assets/images/templateImage3.png",
    "lib/assets/images/popular.png",
  ];

  static final Map<String, Widget> navTitles = {
    "General information": const GeneralInformation(),
    "Objective": const Objective(),
    "Education": const EducationEmpty(),
    "Experience": const ExperienceEmpty(),
    "Experiencedata": const ExperienceData(),
    "Educationdata": const EducationData(),
  };
  static final List tabTitles = [
    "General information",
    "Objective",
    "Education",
    "Experience",
    "Experiencedata",
    "Educationdata",
  ];
}
