import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedgender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: ReusableCardChild(
                        icono: FontAwesomeIcons.mars, lebel: "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    colour: selectedgender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: ReusableCardChild(
                      icono: FontAwesomeIcons.venus,
                      lebel: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height',
                    style: lebelTextStyle,
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
                      Text('cm',
                      style: kNumberTextStyle,
                      ),
                    ],
                  ),
                  Slider(value: height.toDouble(), 
                  min: 120.0,
                  max:220.0,
                  activeColor: Color(0xFFEB15555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue) {
                    setState(() {
                      height=newValue.round();
                    });

                  },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(),
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(),
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerheight,
          ),
        ],
      ),
    );
  }
}
