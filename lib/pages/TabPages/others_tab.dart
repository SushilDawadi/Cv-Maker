import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/dialogbox.dart';

import 'package:cv_maker/components/expanded_inner_tile.dart';
import 'package:cv_maker/components/input_dialog_box.dart';
import 'package:cv_maker/components/others_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: containerPadding,
          child: Column(
            children: [
              OtherListTile(
                showAddButton: true,
                showSubText: true,
                subText: "(3 languages selected)",
                text: "Language",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                      top: 4.h, right: 7.w, bottom: 12.h, left: 7.w),
                  child: Column(
                    children: [
                      const ExpandedInnerContent(
                          innerText: "Nepali", innerSubText: "(Expert)"),
                      SizedBox(height: Get.height * 0.005),
                      const ExpandedInnerContent(
                          innerText: "English", innerSubText: "(Intermediate)"),
                      SizedBox(height: Get.height * 0.005),
                      const ExpandedInnerContent(
                          innerText: "Hindi", innerSubText: "(Beginner)"),
                    ],
                  ),
                ),
                children: const DialogBox(titleText: "Select languages", list: [
                  'English',
                  'Afrikaans',
                  'Nepali',
                  'Hindi',
                  'Arabic',
                  'Chinese',
                  'Czech',
                  'Danish',
                  'Dutch',
                  'Norwegia',
                  'English',
                  'Afrikaans',
                  'Nepali',
                  'Hindi',
                  'Arabic',
                  'Chinese',
                  'Czech',
                  'Danish',
                  'Dutch',
                  'Norwegia'
                ]),
              ),
              OtherListTile(
                showAddButton: true,
                showSubText: true,
                subText: "(7 interest added)",
                text: "Interest",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                      top: 4.h, right: 7.w, bottom: 12.h, left: 7.w),
                  child: const Column(
                    children: [],
                  ),
                ),
                children: const DialogBox(
                  titleText: "Select Interests",
                  list: [
                    'Travelling',
                    'Cooking',
                    'Music',
                    'Art and Creativity',
                    'Technology',
                    'Communication Volunteering',
                    'Fitness Excercies',
                    'History and archaeology',
                    'Astronomy',
                    'Meditation and Mindfulness'
                  ],
                ),
              ),
              OtherListTile(
                showAddButton: true,
                showSubText: true,
                subText: "(3 skills added)",
                text: "Skills",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                      top: 4.h, right: 7.w, bottom: 12.h, left: 7.w),
                  child: Column(
                    children: [
                      const ExpandedInnerContent(
                          innerText: "Project Manager",
                          innerSubText: "(Expert)"),
                      SizedBox(height: Get.height * 0.005),
                      const ExpandedInnerContent(
                          innerText: "Java", innerSubText: "(Intermediate)"),
                      SizedBox(height: Get.height * 0.005),
                      const ExpandedInnerContent(
                          innerText: "Python", innerSubText: "(Beginner)"),
                    ],
                  ),
                ),
                children: const DialogBox(titleText: "Select Skills", list: [
                  'Java',
                  'Project Management',
                  'Agile Methodologies',
                  'Sales Technique',
                  'Engineering Skills',
                  'Team Leadership',
                  'Financial Analysis',
                  'Healthcare Expert',
                  'Public Speaking',
                  'Networking',
                ]),
              ),
              OtherListTile(
                showAddButton: true,
                showSubText: true,
                subText: "(3 Skills added)",
                text: "Software",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                      top: 4.h, right: 7.w, bottom: 12.h, left: 7.w),
                  child: Column(children: []),
                ),
                children: const DialogBox(
                  titleText: "Select Softwares",
                  list: [
                    'Visual Studio Code',
                    'Atom',
                    'Android Studio',
                    'Github',
                    'Xcode',
                    'PostgresSQL',
                    'Wordpress',
                    'Joomla',
                    'Jira',
                    'Trello',
                  ],
                ),
              ),
              OtherListTile(
                showAddButton: true,
                showSubText: true,
                subText: "(1 item added)",
                text: "Award/Certificates",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                      top: 4.h, right: 7.w, bottom: 12.h, left: 7.w),
                  child: Column(children: []),
                ),
                children: const InputDialogBox(
                  titleText: "Add Award/Certificates",
                  // hintText: "Add Award/Certificates",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
