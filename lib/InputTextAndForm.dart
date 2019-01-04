import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
          hintColor: Colors.grey[200],
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.yellow),
              hintStyle: TextStyle(color: Colors.pink, fontSize: 14.0)//定义提示文本样式
          )),
      home: MyApp(),
    ));

class FocusTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FocusTestRouteState();
}

class _FocusTestRouteState extends State<FocusTestRoute> {
  TextEditingController myController = TextEditingController();
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _obtainTextField(),
        TextField(
          focusNode: focusNode2,
          style: TextStyle(fontSize: 20.0),
          controller: myController,
          obscureText: true,
          textInputAction: TextInputAction.send,
          keyboardType:
              TextInputType.numberWithOptions(signed: false, decimal: false),
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            labelText: "密码",
            hintText: "请输入密码",
          ),
          onChanged: _onTextChanged,
        ),
        Builder(builder: (ctx) {
          return Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  if (focusScopeNode == null) {
                    focusScopeNode = FocusScope.of(ctx);
                  }
                  focusScopeNode.requestFocus(focusNode2);
                },
                child: Text("移动焦点"),
              ),
              FlatButton(
                onPressed: () {
                  focusNode1.unfocus();
                  focusNode2.unfocus();
                },
                child: Text("隐藏键盘"),
              ),
            ],
          );
        }),
        Builder(builder: (ctx){
          return Form(child: null);
        })
      ],
    );
  }

  Widget _obtainTextField() {
    return TextField(
      focusNode: focusNode1,
      autofocus: true,
      maxLines: 1,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        labelText: "用户名",
        hintText: "用户名或邮箱",
      ),
    );
  }

  void _onTextChanged(String msg) {
    print(myController.text);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(child: FocusTestRoute()),
    );
  }
}
