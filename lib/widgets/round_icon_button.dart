import 'package:bmi_calculator/components/color.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({required this.icon, required this.onPress, Key? key})
      : super(key: key);

  final VoidCallback onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0,
      shape: const CircleBorder(),
      fillColor: AppColor.wLightBlueColor,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      onPressed: onPress,
    );
  }
}
