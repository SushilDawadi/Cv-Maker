import 'package:cv_maker/components/my_error.dart';
import 'package:flutter/material.dart';

class ExperienceEmpty extends StatelessWidget {
  const ExperienceEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: MyErrorPage(
        errorText: "No Experience details found",
      ),
    );
  }
}
