import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';

class MyCustomTemplateHeading extends StatelessWidget {
  final String titleText;
  final String? seeAllText;
  const MyCustomTemplateHeading(
      {super.key, required this.titleText, this.seeAllText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: mainTextStyle,
        ),
        Text(seeAllText ?? "", style: subTextStylePrimary),
      ],
    );
  }
}
