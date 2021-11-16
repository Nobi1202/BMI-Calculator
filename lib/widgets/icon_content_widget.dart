import 'package:bmi_calculator/components/text_style.dart';
import 'package:flutter/material.dart';

class IconContentWidget extends StatelessWidget {
  const IconContentWidget({required this.icon, required this.label, Key? key})
      : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
