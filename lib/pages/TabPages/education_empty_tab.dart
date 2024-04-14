import 'package:cv_maker/components/custom/bottom_sheet/add_bottom_sheet_template.dart';
import 'package:cv_maker/components/custom/error/my_custom_error_page_template.dart';

import 'package:flutter/material.dart';

class EducationEmpty extends StatelessWidget {
  const EducationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: MyCustomErrorPageTemplate(
        addBottomSheetTemplate: AddBottomSheetTemplate(
            titleText: "Add Education",
            hintTextOne: "School / College / University",
            hintTextTwo: "Course/Degree",
            hintTextThree: "Cgpa/Grade",
            statusText: "Currently studying here",
            descriptionText: "Description . . ."),
        errorText: "No education details found",
      ),
    );
  }
}
