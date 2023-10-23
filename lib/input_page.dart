import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFBB1555);

enum GenderType { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isMaleCardActive = false;
  bool isFemaleCardActive = false;

  void updateColor(GenderType gender) {
    setState(() {
      if (gender == GenderType.male) {
        isMaleCardActive = !isMaleCardActive;
        isFemaleCardActive = false;
      } else if (gender == GenderType.female) {
        isFemaleCardActive = !isFemaleCardActive;
        isMaleCardActive = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0A0E21),
          title: Center(child: Text('Calculateur d\'IMC')),
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
                          updateColor(GenderType.male);
                        });
                      },
                      child: ReusableCard(
                        colour: isMaleCardActive
                            ? activeCardColour
                            : inactiveCardColour,
                        cardChild: ReusableGender(
                          genderName: 'HOMME',
                          genderIcon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(GenderType.female);
                        });
                      },
                      child: ReusableCard(
                        colour: isFemaleCardActive
                            ? activeCardColour
                            : inactiveCardColour,
                        cardChild: ReusableGender(
                          genderName: 'FEMME',
                          genderIcon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(colour: activeCardColour),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(colour: activeCardColour),
                  ),
                  Expanded(
                    child: ReusableCard(colour: activeCardColour),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80.0,
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: bottomContainerColour,
              ),
            ),
          ],
        ));
  }
}
