import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StackTest",
      home: Scaffold(
        appBar: AppBar(
          title: Text("StackTest"),
        ),
        body: Container(
          width: 500,
          height: 700,
          color: Colors.orangeAccent,
          child: _createStack(),
        ),
      ),
    );
  }

  Widget _createStack() {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          child: Text("Hello world", style: TextStyle(color: Colors.white)),
          color: Colors.red,
        ),
        Positioned(
          left: 18.0,
          width: 10.0,
          child: Text("I am Jack"),
        ),
        Positioned(
          top: 18.0,
          child: Text("Your friend"),
        )
      ],
    );
  }
}
