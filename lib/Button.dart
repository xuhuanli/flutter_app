import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Button",
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("Submit"),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {},
              ),
              FlatButton(
                onHighlightChanged: (changed) {
                  print("onHighlightChanged , $changed");
                },
                onPressed: () {},
                textColor: Colors.pink,
                padding: EdgeInsets.only(
                    top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
                splashColor: Colors.yellow,
                color: Colors.blue,
                colorBrightness: Brightness.light,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20.0),
                  ),
                ),
                child: Text("FlatButton"),
              ),
              OutlineButton(
                onPressed: () {},
                child: Text("OutlineButton"),
              ),
              IconButton(icon: Icon(Icons.thumb_up), onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
