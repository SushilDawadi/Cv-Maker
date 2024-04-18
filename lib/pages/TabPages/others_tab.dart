import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/dialog_box/add_reference_dialog_box.dart';
import 'package:cv_maker/components/custom/dialog_box/add_social_handle_dialog_box.dart';
import 'package:cv_maker/components/custom/dialog_box/dialogbox.dart';
import 'package:cv_maker/components/custom/dialog_box/difficulty_dialog.dart';

import 'package:cv_maker/components/custom/dialog_box/expanded_inner_tile.dart';
import 'package:cv_maker/components/custom/dialog_box/award_input_dialog_box.dart';
import 'package:cv_maker/components/custom/other_tab_children/child_template.dart';
import 'package:cv_maker/components/custom/other_tab_children/software_child.dart';
import 'package:cv_maker/components/custom/tile/others_list_tile.dart';
import 'package:cv_maker/components/custom/dialog_box/research_dialog_box.dart';
import 'package:cv_maker/components/custom/other_tab_children/interest_child.dart';
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
                mediumDialogBox: false,
                smallDialogBox: false,
                showAddButton: true,
                showSubText: true,
                subText: "(3 languages selected)",
                text: "Language",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    right: 7.w,
                    bottom: 12.h,
                  ),
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
                children: const DialogBox(
                  icon: Icons.language,
                  titleText: "Select languages",
                  list: [
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
                  ],
                  children: DifficultyDialog(
                      titleText: "Add Language",
                      subText: "Selected language",
                      valueText: "English"),
                ),
              ),
              OtherListTile(
                mediumDialogBox: false,
                smallDialogBox: false,
                showAddButton: true,
                showSubText: true,
                subText: "(7 interest added)",
                text: "Interest",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                      top: 4.h, right: 7.w, bottom: 12.h, left: 7.w),
                  child: const Column(
                    children: [InterestChild()],
                  ),
                ),
                children: const DialogBox(
                  icon: Icons.language,
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
                mediumDialogBox: false,
                smallDialogBox: false,
                showAddButton: true,
                showSubText: true,
                subText: "(3 skills added)",
                text: "Skills",
                expandedContent: Padding(
                  padding: EdgeInsets.only(top: 4.h, right: 7.w, bottom: 12.h),
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
                children: const DialogBox(
                  icon: Icons.gesture,
                  titleText: "Select Skills",
                  list: [
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
                  ],
                  children: DifficultyDialog(
                      titleText: "Add Skill",
                      subText: "Selected Skill",
                      valueText: "Java"),
                ),
              ),
              OtherListTile(
                mediumDialogBox: false,
                smallDialogBox: false,
                showAddButton: true,
                showSubText: true,
                subText: "(3 Skills added)",
                text: "Software",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    right: 7.w,
                    bottom: 12.h,
                  ),
                  child: const Column(children: [SoftwareChild()]),
                ),
                children: const DialogBox(
                  icon: Icons.gesture,
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
                mediumDialogBox: false,
                smallDialogBox: true,
                showAddButton: true,
                showSubText: true,
                subText: "(1 item added)",
                text: "Award/Certificates",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    right: 7.w,
                    bottom: 12.h,
                  ),
                  child: const Column(children: [
                    ChildTemplate(
                      titleText: "Coursera",
                      contentText: "PY-2005",
                    ),
                  ]),
                ),
                children: const AwardInputDialogBox(
                  titleText: "Add Award/Certificates",
                  // hintText: "Add Award/Certificates",
                ),
              ),
              OtherListTile(
                mediumDialogBox: false,
                smallDialogBox: true,
                showAddButton: true,
                showSubText: true,
                subText: "(1 item added)",
                text: "Research Work",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    right: 7.w,
                    bottom: 12.h,
                  ),
                  child: const Column(children: [
                    ChildTemplate(
                      titleText: "Impact of smart devices on human",
                      contentText: "Summary of how smart devices around ...",
                    ),
                  ]),
                ),
                children: const ResearchDialog(

                    // hintText: "Add Award/Certificates",
                    ),
              ),
              OtherListTile(
                mediumDialogBox: true,
                smallDialogBox: false,
                showAddButton: true,
                showSubText: true,
                subText: "(1 item added)",
                text: "Reference",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    right: 7.w,
                    bottom: 12.h,
                  ),
                  child: const Column(children: [
                    ChildTemplate(
                        titleText: "John dow",
                        contentText:
                            "Full Stack deleloper\n\nMicrosoft\n9814123142")
                  ]),
                ),
                children: const AddReference(

                    // hintText: "Add Award/Certificates",
                    ),
              ),
              OtherListTile(
                mediumDialogBox: false,
                smallDialogBox: false,
                showAddButton: true,
                showSubText: true,
                subText: "(1 item added)",
                text: "Social",
                expandedContent: Padding(
                  padding: EdgeInsets.only(
                    top: 4.h,
                    right: 7.w,
                    bottom: 12.h,
                  ),
                  child: const Column(children: [
                    ChildTemplate(
                        titleText: "Linkedin",
                        contentText: "https://www.linkedin.com")
                  ]),
                ),
                children: const DialogBox(
                  icon: Icons.gesture,
                  list: [
                    'Linkedin',
                    'Facebook',
                    'Instagram',
                    'Behance',
                    'Pinterest',
                    'Dribble',
                    'WhatsApp',
                    'Twitter',
                    'npm',
                    'Portfolio',
                  ],
                  titleText: "Add Social Handles",
                  children: AddSocialHandle(),
                ),

                // hintText: "Add Award/Certificates",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
