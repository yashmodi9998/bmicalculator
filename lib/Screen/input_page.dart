import 'package:bmicalculator/Components/reusable_icon_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/constant_file.dart';
import 'package:bmicalculator/Components/reusable_widget.dart';
import '../constant_file.dart';
import 'package:bmicalculator/Components/round_icon_btn.dart';
import 'result_page.dart';
import '../Components/bottom_btn_widget.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  double currentHeightSliderValue = 170;
  int age = 19;
  int weight = 50;
  bool checkGenderSelectedOrNot() {
    if (selectedGender == null) {
      print('gender is not selected');
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //leading: Icon(Icons.local_hospital_sharp),
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    //flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // selectedGender = Gender.male;
                          //print(selectedGender);
                        });
                      },
                      child: ReusableWidget(
                        colour: selectedGender == Gender.male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        widgetChild: ReusableIconContent(
                          myIcon: FontAwesomeIcons.mars,
                          myText: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    //flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        //print('female card');
                        setState(() {
                          // print(selectedGender);
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableWidget(
                        colour: selectedGender == Gender.female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        widgetChild: ReusableIconContent(
                          myIcon: FontAwesomeIcons.venus,
                          myText: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableWidget(
                colour: kActiveCardColor,
                widgetChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // textBaseline: TextBaseline.ideographic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(currentHeightSliderValue.round().toString(),
                            style: kNumberTextStyle),
                        Text(
                          'cm',
                          style: kLabelTextStyle,
                          // textBaseline: Text
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8DE98),
                          thumbColor: Color(0xFFEB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                          overlayColor: Color(0x29EB1555),
                          activeTrackColor: Colors.white),
                      child: Slider(
                        value: currentHeightSliderValue,
                        min: 150,
                        max: 210,
                        // activeColor: Colors.white,

                        onChanged: (double value) {
                          setState(() {
                            currentHeightSliderValue = value;
                          });
                          print(currentHeightSliderValue.round());
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableWidget(
                      colour: kActiveCardColor,
                      widgetChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconBtn(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconBtn(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableWidget(
                      colour: kActiveCardColor,
                      widgetChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconBtn(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RoundIconBtn(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                checkGenderSelectedOrNot();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(
                              height: currentHeightSliderValue,
                              age: age,
                              weight: weight,
                              gender: selectedGender.toString(),
                            )));
              },
              child: LastButtonContainerWidget(
                textOfButton: 'CALCULATE BMI',
              ),
            )
          ],
        ),
      ),
    );
  }
}
