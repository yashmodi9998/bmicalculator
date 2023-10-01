import 'package:flutter/material.dart';

class RoundIconBtn extends StatelessWidget {
  final Function onPressed;
  final IconData icon;

  RoundIconBtn({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 0,
      shape: CircleBorder(),
      onPressed: onPressed,
      fillColor: Color(0xff4c4f5e),
    );
  }
}
