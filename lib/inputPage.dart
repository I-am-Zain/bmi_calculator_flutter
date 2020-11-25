import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'containerCode.dart';
import 'iconANDtext.dart';

enum Gender {
  male,
  female,
}
const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF111828);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = activeColor;
  Color femaleColor = deActiveColor;
  void updateColor(Gender genderType) {
    if (genderType == Gender.male) {
      maleColor = activeColor;
      femaleColor = deActiveColor;
    }
    if (genderType == Gender.female) {
      femaleColor = activeColor;
      maleColor = deActiveColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
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
                        updateColor(Gender.male);
                      });
                    },
                    child: RepeatContainerCode(
                      colors: maleColor, //Color(0xff1d1e33),
                      cardWidget: RepeatIconAndText(
                        iconData: FontAwesomeIcons.male,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: RepeatContainerCode(
                      colors: femaleColor, //Color(0xff1d1e33),
                      cardWidget: RepeatIconAndText(
                        iconData: FontAwesomeIcons.female,
                        label: 'FeMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: RepeatContainerCode(
              colors: Color(0xff1d1e33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xff1d1e33),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xff1d1e33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
