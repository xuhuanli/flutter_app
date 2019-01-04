import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MainPage(),
    ));

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("toggle"),
      ),
      body: Container(
        child: ToggleWidget(),
      ),
    );
  }
}

class ToggleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StateToggleWidget();
  }
}

class _StateToggleWidget extends State<ToggleWidget> {
  var _defaultValue = false;
  var _defaultSwitchValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Checkbox(value: _defaultValue,  onChanged: _onChanged),
        Switch(value: _defaultSwitchValue, onChanged: _onChanged,activeColor: Colors.yellow,),
        CheckboxListTile(value: _defaultValue, onChanged: _onChanged,title: Text("Title"),subtitle: Text("subTitle"),activeColor: Colors.pink,controlAffinity: ListTileControlAffinity.leading,secondary: Icon(Icons.thumb_up),),
      ],
    );
  }

  void _onChanged(bool value) {
    setState(() {
      _defaultValue = value;
      _defaultSwitchValue = value;
    });
  }
}
