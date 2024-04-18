import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/components/custom/other_tab_children/selected_element.dart';
import 'package:flutter/material.dart';

class InterestChild extends StatelessWidget {
  const InterestChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerBackgroundColor,
      ),
      child: Wrap(
        children: [
          SelectedElement(selectedText: "Reading"),
          SelectedElement(selectedText: "Writing"),
          SelectedElement(selectedText: "Dancing"),
          SelectedElement(selectedText: "Photography"),
          SelectedElement(selectedText: "Fitness and Exercise"),
          SelectedElement(selectedText: "Mediation and Mindfulness"),
          SelectedElement(selectedText: "Gaming"),
         
        ],
      ),
    );
  }
}
