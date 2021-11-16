import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget(
      {required this.cardChild, required this.color, Key? key})
      : super(key: key);

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: cardChild,
    );
  }
}
