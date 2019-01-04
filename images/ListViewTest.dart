import 'package:flutter/material.dart';
import 'package:flutter_app/scroll/BaseView.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(ListViewPage());

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.blue,
      indent: 16.0,
    );
    Widget divider2 = Divider(
      color: Colors.green,
      indent: 16.0,
    );
    return BaseView(
      title: "ListViewPage",
      bodyConstructor: (ctx) {
        return Container(
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text("$index"),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return index % 2 == 0 ? divider1 : divider2;
              },
              itemCount: 100),
        );
      },
    );
  }
}
