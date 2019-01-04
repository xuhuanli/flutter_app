import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BoxTest",
      home: Scaffold(
        appBar: AppBar(
          title: Text("BoxTest"),
        ),
        body: Center(
          child: Container(
            child: Transform.rotate(
              angle: math.pi/2,
              child: Text("helloworld"),
            ),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                    width: 2.0, style: BorderStyle.solid, color: Colors.red),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, -10.0),
                      blurRadius: 40.0)
                ],
                shape: BoxShape.rectangle,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.yellow, Colors.red, Colors.black])),
          ),
        ),
      ),
    );
  }
}
