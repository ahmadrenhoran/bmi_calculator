import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_content.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xffeb1555);
const activeCardColor = Color(0Xff1d1e33);
const inactiveCardColor = Color(0Xff111328);
const MALE_GENDER = 1;
const FEMALE_GENDER = 2;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == MALE_GENDER) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else if (gender == FEMALE_GENDER) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(MALE_GENDER);
                        });
                      },
                      child: ReusableCard(
                          color: maleCardColor,
                          cardChild: const CardContent(
                              label: "MALE", icon: FontAwesomeIcons.mars)),
                    )),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(FEMALE_GENDER);
                        });
                      },
                      child: ReusableCard(
                  color: femaleCardColor,
                  cardChild: const CardContent(
                        label: "FEMALE", icon: FontAwesomeIcons.venus),
                ),
                    ))
              ],
            )),
            Expanded(child: ReusableCard(color: activeCardColor, cardChild: SizedBox(),)),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(color: activeCardColor, cardChild: SizedBox())),
                Expanded(child: ReusableCard(color: activeCardColor, cardChild: SizedBox()))
              ],
            )),
            Container(
              color: const Color(0xffeb1555),
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text("Click Me"),
              ),
            )
          ],
        ));
  }
}



