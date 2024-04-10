import 'package:cv_maker/components/my_error.dart';
import 'package:flutter/material.dart';

class EducationEmpty extends StatelessWidget {
  const EducationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: MyErrorPage(
      errorText: "No education details found",
    ));
  }
}
