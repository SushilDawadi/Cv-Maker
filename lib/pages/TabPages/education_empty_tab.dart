import 'package:cv_maker/components/custom/my_custom_error_page.dart';
import 'package:flutter/material.dart';

class EducationEmpty extends StatelessWidget {
  const EducationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: MyCustomErrorPage(
      errorText: "No education details found",
    ));
  }
}
