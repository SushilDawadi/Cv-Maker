import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double width;
  final double? height;
  final double fontSize;
  final bool? borderColor;

  const MyButton(
      {super.key,
      required this.text,
      this.onPressed,
      required this.width,
      this.height,
      required this.fontSize,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: () {
            onPressed!();
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              borderColor!
                  ? RoundedRectangleBorder(
                      side: const BorderSide(color: primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(12.r),
                    )
                  : RoundedRectangleBorder(
                      side: const BorderSide(color: primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
            ),
            backgroundColor: borderColor!
                ? MaterialStateProperty.all(white)
                : MaterialStateProperty.all(primaryColor),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 16.h),
            ),
          ),
          child: borderColor!
              ? Text(text, style: primaryTextStyle)
              : Text(text, style: whiteTextStyle),
        ),
      ),
    );
  }
}
