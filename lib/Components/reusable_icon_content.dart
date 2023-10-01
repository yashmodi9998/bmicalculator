import 'package:flutter/material.dart';
import 'package:bmicalculator/constant_file.dart';

class ReusableIconContent extends StatelessWidget {
  final IconData myIcon;
  final String myText;

  ReusableIconContent({@required this.myIcon, @required this.myText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          myText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
