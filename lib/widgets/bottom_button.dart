import 'package:bmi_calculator/components/color.dart';
import 'package:bmi_calculator/components/height.dart';
import 'package:bmi_calculator/components/text_style.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTap, required this.buttonTitle, Key? key})
      : super(key: key);

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(bottom: 20),
        color: AppColor.wPink300,
        margin: const EdgeInsets.only(top: 10),
        height: Height.bottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
