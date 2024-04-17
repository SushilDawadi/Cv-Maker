import 'package:cv_maker/assets/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCustomCheckBox extends StatefulWidget {
  final Function(bool)? onChanged;

  const MyCustomCheckBox({super.key, this.onChanged});

  @override
  State<MyCustomCheckBox> createState() => _MyCustomCheckBoxState();
}

class _MyCustomCheckBoxState extends State<MyCustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          widget.onChanged!(isChecked); // Notify the parent widget
        });
      },
      child: Container(
        height: Get.height * 0.029,
        width: Get.width * 0.055,
        decoration: BoxDecoration(
          color: isChecked ? primaryColor : white, // Use your desired colors
          border: Border.all(
            color: Colors.grey, // Use your desired border color
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: isChecked
            ? const Icon(
                Icons.check,
                size: 15.0,
                color: Colors.white, // Use your desired check color
              )
            : null,
      ),
    );
  }
}
