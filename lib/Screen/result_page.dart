import 'package:bmicalculator/Screen/MyPage1.dart';
import 'package:bmicalculator/constant_file.dart';
import 'package:bmicalculator/Components/reusable_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Components/bottom_btn_widget.dart';
import 'dart:math';

class Result extends StatelessWidget {
  final double height;
  final int weight, age;
  final String gender;
  //Map<String, String> check = {''};
  String text1, text2;
  Result({this.height, this.weight, this.age, this.gender});

  double bmi;

  double bmiCalculate() {
    bmi = (weight * 10000 / (height * height));
    return bmi;
  }

  //
  void checkBMI() {
    if (bmiCalculate() < 18.5) {
      text1 = 'UnderWeight';
      text2 = 'BMI<18.5 kg/m2';
    } else if (bmiCalculate() > 18.5 && bmiCalculate() < 25) {
      text1 = 'Normal';
      text2 = '18.5-25 kg/m2';
    } else if (bmiCalculate() > 23.5) {
      text1 = 'Overweight';
      text2 = 'BMI > 25 kg/m2';
    }
  }

  @override
  Widget build(BuildContext context) {
    checkBMI();
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULAOR'),
        ),
        body: Column(
          children: <Widget>[
            Text(
              'Your Result',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            Expanded(
              child: ReusableWidget(
                  colour: kActiveCardColor,
                  widgetChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        text1,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.teal, fontSize: 30),
                      ),
                      Text(
                        bmiCalculate().toStringAsFixed(2),
                        textAlign: TextAlign.center,
                        style: kNumberTextStyle,
                      ),
                      Text(
                        text2,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: LastButtonContainerWidget(
                  textOfButton: 'RECALCULATE BMI',
                )),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyPage1()));
                },
                child: LastButtonContainerWidget(
                  textOfButton: 'Next Page',
                ))
          ],
        ));
  }
}
