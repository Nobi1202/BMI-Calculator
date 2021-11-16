import 'package:bmi_calculator/components/color.dart';
import 'package:bmi_calculator/components/enum.dart';
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
  Gender? selectedGender;

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
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: ContainerWidget(
                      cardChild: const IconContentWidget(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                      color: selectedGender == Gender.male
                          ? AppColor.activeColor
                          : AppColor.inactiveColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: ContainerWidget(
                      cardChild: const IconContentWidget(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                      color: selectedGender == Gender.female
                          ? AppColor.activeColor
                          : AppColor.inactiveColor,
                    ),
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
                    color: AppColor.activeColor,
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
                    color: AppColor.activeColor,
                  ),
                ),
                Expanded(
                  child: ContainerWidget(
                    cardChild: IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    color: AppColor.activeColor,
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
