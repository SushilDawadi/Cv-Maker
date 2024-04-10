import 'package:cv_maker/pages/EducationEmpty/education_empty.dart';
import 'package:cv_maker/pages/Education_data/education_data.dart';
import 'package:cv_maker/pages/ExperienceEmpty/experience_empty.dart';
import 'package:cv_maker/pages/Experience_data/experience_data.dart';
import 'package:cv_maker/pages/general_information/general_information.dart';
import 'package:cv_maker/pages/objective/objective_page.dart';
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
}
