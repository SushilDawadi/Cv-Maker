// import 'package:cv_maker/assets/colors/color.dart';
// import 'package:cv_maker/assets/styles/text_styles.dart';
// import 'package:cv_maker/components/custom/checkbox/my_custom_check_box.dart';
// import 'package:cv_maker/components/dialogbox.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class SelectedTileTemplate extends StatefulWidget {
//   final bool showAddButton;
//   final bool showSubText;
//   final String selectedText;
//   final String subText;
//   const SelectedTileTemplate({
//     super.key,
//     required this.selectedText,
//     required this.subText,
//     required this.showAddButton,
//     required this.showSubText,
//   });

//   @override
//   State<SelectedTileTemplate> createState() => _SelectedTileTemplateState();
// }

// class _SelectedTileTemplateState extends State<SelectedTileTemplate> {
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 9.h, top: 9.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               const MyCustomCheckBox(),
//               SizedBox(
//                 width: Get.width * 0.03,
//               ),
//               Text(
//                 widget.selectedText,
//                 style: boldTextStyleBlack,
//               ),
//               SizedBox(
//                 width: Get.width * 0.02,
//               ),
//               widget.showSubText
//                   ? Text(
//                       widget.subText,
//                       style: subTextStylebold,
//                     )
//                   : const SizedBox(),
//             ],
//           ),
//           widget.showAddButton
//               ? TextButton(
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         builder: (_) => AlertDialog(
//                               backgroundColor: Colors.white,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.all(
//                                       Radius.circular(30.0.r))),
//                               content: Builder(
//                                 builder: (context) {
//                                   return SizedBox(
//                                     height: Get.height * 0.65,
//                                     width: Get.width,
//                                     child: const DialogBox(
//                                       languages: [],
//                                     ),
//                                   );
//                                 },
//                               ),
//                             ));
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         color: primaryColor,
//                       ),
//                       borderRadius: BorderRadius.circular(12.r),
//                     ),
//                     child: Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
//                       child: Text(
//                         "Add +",
//                         style: primaryTextStyle,
//                       ),
//                     ),
//                   ))
//               : const SizedBox(),
//         ],
//       ),
//     );
//   }
// }
