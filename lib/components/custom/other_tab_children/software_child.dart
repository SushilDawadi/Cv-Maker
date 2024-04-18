import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/components/custom/other_tab_children/selected_element.dart';
import 'package:flutter/material.dart';

class SoftwareChild extends StatelessWidget {
  const SoftwareChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: containerBackgroundColor,
      ),
      child: const Wrap(
        children: [
          SelectedElement(selectedText: "Xcode"),
          SelectedElement(selectedText: "Mysql"),
          SelectedElement(selectedText: "Bootstrap"),
          SelectedElement(selectedText: "MongoDB"),
          SelectedElement(selectedText: "Microsoft Azure"),
          SelectedElement(selectedText: "Jupyter Notebooks"),
          SelectedElement(selectedText: "Trello"),
        ],
      ),
    );
  }
}
