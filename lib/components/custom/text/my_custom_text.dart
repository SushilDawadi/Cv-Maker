import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  const MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: primaryTextStyle,
        ),
      ],
    );
  }
}
