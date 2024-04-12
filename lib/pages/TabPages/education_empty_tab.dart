import 'package:cv_maker/components/custom/my_custom_error_page_education.dart';
import 'package:flutter/material.dart';

class EducationEmpty extends StatelessWidget {
  const EducationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: MyCustomErrorPageEducation(
      errorText: "No education details found",
    ));
  }
}
