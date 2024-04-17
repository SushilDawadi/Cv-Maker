import 'package:cv_maker/components/custom/bottom_sheet/add_bottom_sheet_template.dart';
import 'package:cv_maker/components/custom/error/my_custom_error_page_template.dart';

import 'package:flutter/material.dart';

class ProjectEmpty extends StatelessWidget {
  const ProjectEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: MyCustomErrorPageTemplate(
        addBottomSheetTemplate: AddBottomSheetTemplate(
            isProjectPage: true,
            titleText: "Add Project",
            hintTextOne: "Project name",
            hintTextTwo: "Project link (https://projectlink.com)",
            hintTextThree: "",
            statusText: "Currently working in this project",
            descriptionText: "Description (i.e. Project summary) . . ."),
        errorText: "No Project details found",
      ),
    );
  }
}
