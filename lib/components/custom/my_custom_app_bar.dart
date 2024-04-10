import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? showDropButton;
  final bool? showUserDetails;
  final void Function()? onPressed;
  const MyCustomAppBar(
      {super.key, this.showDropButton, this.onPressed, this.showUserDetails});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.w,
        right: 27.w,
        top: 16.h,
        bottom: 16.h,
      ),
      child: AppBar(
        surfaceTintColor: white,
        leading: Image.asset(
          'lib/assets/images/cvMaker.png',
          width: 48.w,
          height: 48.h,
        ),
        leadingWidth: 100.w,
        actions: [
          showDropButton!
              ? Center(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.r)),
                        color: downButtonBackgroundColor,
                      ),
                      child: IconButton(
                        onPressed: () {
                          onPressed!();
                        },
                        icon: Icon(
                          Icons.arrow_downward,
                          color: primaryColor,
                          size: 20.sp,
                        ),
                      )),
                )
              : Container(),
          showUserDetails!
              ? Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
                      child: Text(
                        "Subtle Me ",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: fontFamily,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.h),
                      child: Text(
                        "Basic  •  Prasiddha Nepane",
                        style: TextStyle(
                            fontFamily: fontFamily,
                            fontSize: 14.sp,
                            color: subTextColor),
                      ),
                    ),
                  ],
                )
              : Container()
        ],
      ),
    );
  }

  Size get preferredSize => Size.fromHeight(90.h);
}
