import 'dart:ffi';

import 'package:bmi_calculator/components/color.dart';
import 'package:bmi_calculator/components/height.dart';
import 'package:bmi_calculator/widgets/container_widget.dart';
import 'package:bmi_calculator/widgets/icon_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ContainerWidget(
                    cardChild: IconContentWidget(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                    color: AppColor.wGrey300,
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    cardChild: IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    color: AppColor.wGrey300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ContainerWidget(
                    cardChild: IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    color: AppColor.wGrey300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ContainerWidget(
                    cardChild: IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    color: AppColor.wGrey300,
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    cardChild: IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    color: AppColor.wGrey300,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColor.wPink300,
            margin: const EdgeInsets.only(top: 10),
            height: Height.bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
