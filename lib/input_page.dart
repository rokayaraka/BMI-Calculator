import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerheight = 80.0;
const activeCardColor = Color(0xFF1D1E43);
const inactiveCardColor = Color(0xFF1D1E63);
const bottomContainerColor = Color.fromARGB(251, 129, 59, 33);

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

late Gender selectedgender;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedgender=Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedgender==Gender.male ? activeCardColor : inactiveCardColor,
                            cardChild: ReusableCardChild(icono: FontAwesomeIcons.mars, lebel: "MALE"),),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedgender=Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedgender==Gender.female ? activeCardColor : inactiveCardColor,
                      cardChild: ReusableCardChild(icono: FontAwesomeIcons.venus,
                      lebel: "FEMALE",),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
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




