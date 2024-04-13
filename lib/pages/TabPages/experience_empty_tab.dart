import 'package:cv_maker/components/custom/error/my_custom_error_page_experience.dart';

import 'package:flutter/material.dart';

class ExperienceEmpty extends StatelessWidget {
  const ExperienceEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: MyCustomErrorPageExperience(
        errorText: "No Experience details found",
      ),
    );
  }
}
