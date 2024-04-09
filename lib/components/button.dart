import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
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
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: () {
          onPressed!();
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            borderColor!
                ? RoundedRectangleBorder(
                    side: const BorderSide(color: primaryColor, width: 2),
                    borderRadius: BorderRadius.circular(12.r),
                  )
                : RoundedRectangleBorder(
                    side: const BorderSide(color: primaryColor, width: 2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
          ),
          backgroundColor: borderColor!
              ? MaterialStateProperty.all(Colors.transparent)
              : MaterialStateProperty.all(primaryColor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 10.w, vertical: 14.h),
          ),
        ),
        child: borderColor!
            ? Text(
                text,
                style: TextStyle(
                    color: primaryColor,
                    fontSize: fontSize,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w600),
              )
            : Text(
                text,
                style: TextStyle(
                    color: white,
                    fontSize: fontSize,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w600),
              ),
      ),
    );
  }
}
