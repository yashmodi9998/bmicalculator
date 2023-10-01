import 'package:flutter/material.dart';
import '../constant_file.dart';

class LastButtonContainerWidget extends StatelessWidget {
  String textOfButton;
  LastButtonContainerWidget({this.textOfButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          textOfButton,
          style: kLargebuttonTextStyle,
        ),
      ),
      width: double.infinity,
      height: kBottomContainerHeight,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 20),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFEB1555),
      ),
    );
  }
}
