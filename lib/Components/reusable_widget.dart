import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.colour, this.widgetChild});

  final Color colour;
  final Widget widgetChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      child: widgetChild,
    );
  }
}
