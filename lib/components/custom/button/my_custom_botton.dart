import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double value;
  final double? height;
  final double fontSize;
  final bool? borderColor;
  final bool? showIcon;
  final IconData? icon;

  const MyButton({
    super.key,
    required this.text,
    this.onPressed,
    this.height,
    required this.fontSize,
    this.borderColor,
    required this.value,
    required this.showIcon,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: SizedBox(
        width: Get.width * value,
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
            child: showIcon!
                ? Icon(
                    icon,
                    size: 20.sp,
                    color: primaryColor,
                  )
                : borderColor!
                    ? Text(text, style: primaryTextStyle)
                    : Text(text, style: whiteTextStyle)),
      ),
    );
  }
}
