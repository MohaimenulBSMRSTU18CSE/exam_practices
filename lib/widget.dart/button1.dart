import 'button3.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'button.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  _PracticeState createState() => _PracticeState();
}

enum Enum {
  one,
  two,
}

class _PracticeState extends State<Practice> {
  static const Color activeColor = Color(0xFFF9116E);
  static const Color inactiveColor = Color(0xFF0969FE);
  static var contColor = inactiveColor;
  static var contColor1 = inactiveColor;

  malebutton(Enum data) {
    if (data == Enum.one) {
      contColor1 = inactiveColor;
      if (contColor == inactiveColor) {
        contColor = activeColor;
      } else {
        contColor = inactiveColor;
      }
    }
    if (data == Enum.two) {
      contColor = inactiveColor;
      if (contColor1 == inactiveColor) {
        contColor1 = activeColor;
      } else {
        contColor1 = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malebutton(Enum.two);
                      });
                    },
                    child: ExpandedContainer(
                      
                      containerColor: contColor1,
                      borderRad:
                          BorderRadius.all(Radius.circular(16))
                    ),
                  ),
                ),
                SizedBox(
          width: 10,
        ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malebutton(Enum.one);
                      });
                    },
                    child: ExpandedContainer(
                      
                      containerColor: contColor,
                      borderRad:
                          BorderRadius.all(Radius.circular(16))
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              children: [
                
                Expanded(
                    child: ExpandedContainer(
                        borderRad: BorderRadius.only(
                            bottomRight: Radius.circular(16.0)),
                        containerData: Weight(
                          textValue: '',
                          integerValue: 22,
                        ),
                        containerColor: Theme.of(context).backgroundColor)),
              ],
            ),
          ),
        ),

        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ExpandedContainer(
              containerColor: Theme.of(context).backgroundColor,
              containerData: HeightExpanded(),
            ),
          ),
        ),
        
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class ExpandedContainer extends StatelessWidget {
  final Widget? containerData;
  final BorderRadiusGeometry? borderRad;
  final Color containerColor;
  const ExpandedContainer(
      {required this.containerColor, this.containerData, this.borderRad});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: borderRad,
      ),
      child: containerData,
    );
  }
}

class ExpandedCard extends StatelessWidget {
  final String cardText;
  final IconData icon;
  const ExpandedCard({required this.cardText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 66.0,
        ),
        Text(cardText,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ],
    );
  }
}