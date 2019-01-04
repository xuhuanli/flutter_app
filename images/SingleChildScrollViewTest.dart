import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/scroll/BaseView.dart';

void main() => runApp(SingleChildScrollViewPage());

class SingleChildScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: "SingleChildScrollViewPage",
      bodyConstructor: (ctx) {
        String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        return Scrollbar(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: str.split("").map((c) {
                  return Text(
                    c,
                    textScaleFactor: 2.0,
                  );
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
