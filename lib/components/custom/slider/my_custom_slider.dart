import 'package:cv_maker/assets/colors/color.dart';
import 'package:flutter/material.dart';

class MyCustomSlider extends StatefulWidget {
  const MyCustomSlider({super.key});

  @override
  State<MyCustomSlider> createState() => _MyCustomSliderState();
}

double _currentValue = 0;

class _MyCustomSliderState extends State<MyCustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SizedBox(
        width: double.infinity,
        child: Slider(
            min: 0.0,
            max: 10.0,
            divisions: 2,
            // label: _currentValue.round().toString(),
            inactiveColor: sliderInactiveColor,
            activeColor: primaryColor,
            thumbColor: primaryColor,
            value: _currentValue,
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            }),
      ),
    );
  }
}
