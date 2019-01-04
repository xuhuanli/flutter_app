import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Image",
      debugShowCheckedModeBanner: true,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  String icons = "";
  var _switchState = true;
  var _checkBoxState = true;
// accessible: &#xE914; or 0xE914 or E914

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.accessible,color: Colors.green,),
                Icon(Icons.error,color: Colors.green,),
                Icon(Icons.fingerprint,color: Colors.green,),
              ],
            ),
            Checkbox(value: _checkBoxState,tristate: true, onChanged: (b){print("Value is $b");}),
            Switch(value: _switchState, onChanged: (b){})
          ],
        )
      ),
    );
  }
}