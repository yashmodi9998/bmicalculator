import 'package:bmicalculator/Screen/GenerateQR.dart';
import 'package:bmicalculator/Screen/ScanQR.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage1 extends StatefulWidget {
  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
  @override
  _MyPage1 createState() => _MyPage1();
}

class _MyPage1 extends State<MyPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 500,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Display Image
          // Image(
          //     image: NetworkImage(
          //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyYwscUPOH_qPPe8Hp0HAbFNMx-TxRFubpg&usqp=CAU")),

          //First Button
          FlatButton(
            padding: EdgeInsets.all(15),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ScanQR()));
            },
            child: Text(
              "Scan QR Code",
              style: TextStyle(color: Colors.indigo[900]),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.indigo[900]),
            ),
          ),
          SizedBox(height: 10),

          //Second Button
          FlatButton(
            padding: EdgeInsets.all(15),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GenerateQR()));
            },
            child: Text(
              "Generate QR Code",
              style: TextStyle(color: Colors.indigo[900]),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.indigo[900]),
            ),
          ),
        ],
      ),
    ));
  }
}
