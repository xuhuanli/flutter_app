import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  final String title;

  final WidgetBuilder bodyConstructor;

  const BaseView({Key key, this.title: "", @required this.bodyConstructor})
      : assert(title != null),
        assert(bodyConstructor != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Builder(builder: bodyConstructor),
      ),
    );
  }
}
