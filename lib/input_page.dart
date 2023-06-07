import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ReusableCard(
                    color: activeCardColor,
                    cardChild: CardChild(
                      cardIcon: Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                      cardText: 'MALE',
                    ),
                  ),
                  ReusableCard(
                    color: activeCardColor,
                    cardChild: CardChild(
                      cardIcon: Icon(
                        FontAwesomeIcons.venus,
                        size: 80,
                      ),
                      cardText: 'FEMALE',
                    ),
                  ),
                ],
              ),
            ),
            ReusableCard(color: activeCardColor),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(color: activeCardColor),
                  ReusableCard(color: activeCardColor),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class CardChild extends StatelessWidget {
  const CardChild({required this.cardIcon, required this.cardText});

  final Icon cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        cardIcon,
        SizedBox(
          height: 15,
        ),
        Text(
          cardText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.cardChild});

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
