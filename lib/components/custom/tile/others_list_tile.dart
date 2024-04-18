import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/checkbox/my_custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class OtherListTile extends StatefulWidget {
  final Widget expandedContent;
  final Widget children;
  final String text;
  final String subText;
  final bool showAddButton;
  final bool showSubText;
  final bool smallDialogBox;
  final bool mediumDialogBox;
  const OtherListTile(
      {super.key,
      required this.expandedContent,
      required this.text,
      required this.subText,
      required this.showAddButton,
      required this.showSubText,
      required this.children,
      required this.smallDialogBox,
      required this.mediumDialogBox});

  @override
  _OtherListTileState createState() => _OtherListTileState();
}

class _OtherListTileState extends State<OtherListTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  MyCustomCheckBox(
                    onChanged: (isChecked) {
                      setState(() {
                        isExpanded = isChecked; // Expand tile when checked
                      });
                    },
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.text,
                    style: boldTextStyleBlack,
                  ),
                  SizedBox(width: Get.width * 0.03),
                  Text(
                    widget.subText,
                    style: subTextStylebold,
                  ),
                ],
              ),
              widget.showAddButton
                  ? TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) => AlertDialog(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30.0.r))),
                                  content: Builder(
                                    builder: (context) {
                                      return SizedBox(
                                          height: widget.smallDialogBox
                                              ? Get.height * 0.32
                                              : widget.mediumDialogBox
                                                  ? Get.height * 0.4
                                                  : Get.height * 0.65,
                                          width: Get.width,
                                          child: widget.children);
                                    },
                                  ),
                                ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.w, vertical: 6.h),
                          child: Text(
                            "Add +",
                            style: primaryTextStyle,
                          ),
                        ),
                      ))
                  : const SizedBox(),
            ],
          ),
        ),
        if (isExpanded)
          Container(
            color: containerBackgroundColor,
            child: widget.expandedContent,
          ),
        const Divider(thickness: 0.4),
      ],
    );
  }
}
