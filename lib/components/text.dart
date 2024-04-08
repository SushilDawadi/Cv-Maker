import 'package:cv_maker/assets/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  const MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              fontFamily: GoogleFonts.plusJakartaSans().fontFamily),
        ),
      ],
    );
  }
}
