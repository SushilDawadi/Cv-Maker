import 'package:cv_maker/components/custom/bottom_sheet/add_bottom_sheet_template.dart';
import 'package:cv_maker/components/custom/error/my_custom_error_page_template.dart';

import 'package:flutter/material.dart';

class ExperienceEmpty extends StatelessWidget {
  const ExperienceEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: MyCustomErrorPageTemplate(
        addBottomSheetTemplate: AddBottomSheetTemplate(
          titleText: "Add Experience",
          hintTextOne: "Job Title / Position",
          hintTextTwo: "Company / Organization",
          hintTextThree: "City/ Country",
          statusText: "Currently working here",
          descriptionText: "Description (i.e. Job Responsibilities) . . .",
        ),
        errorText: "No Experience details found",
      ),
    );
  }
}
