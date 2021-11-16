import 'package:bmi_calculator/components/color.dart';
import 'package:bmi_calculator/components/enum.dart';
import 'package:bmi_calculator/components/height.dart';
import 'package:bmi_calculator/components/text_style.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
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
  int height = 180;

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
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: const IconContentWidget(
                      icon: FontAwesomeIcons.mars,
                      label: "MALE",
                    ),
                    color: selectedGender == Gender.male
                        ? AppColor.activeColor
                        : AppColor.inactiveColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: const IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    color: selectedGender == Gender.female
                        ? AppColor.activeColor
                        : AppColor.inactiveColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "HEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberTextStyle,
                            ),
                            const Text(
                              "cm",
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        Slider(
                          min: 120,
                          max: 220,
                          activeColor: AppColor.wPink500,
                          value: height.toDouble(),
                          onChanged: (newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ],
                    ),
                    color: AppColor.activeColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: const IconContentWidget(
                      icon: FontAwesomeIcons.venus,
                      label: "FEMALE",
                    ),
                    color: AppColor.activeColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {},
                    cardChild: const IconContentWidget(
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
