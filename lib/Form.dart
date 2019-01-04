import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Form",
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormTestRoute();
}

class _FormTestRoute extends State<MyApp> {
  GlobalKey _formKey = GlobalKey<FormState>();
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Test"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "用户名",
                  hintText: "请输入用户名",
                ),
                validator: (name) {
                  return name.trim().length > 0 ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                controller: _pwdController,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "密码",
                  hintText: "请输入密码",
                ),
                obscureText: true,
                validator: (pwd) {
                  return pwd.trim().length > 5 ? null : "密码不能少于5位";
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Builder(
                        builder: (ctx) => RaisedButton(
                              padding: const EdgeInsets.all(16.0),
                              color: Theme.of(context).primaryColor,
                              colorBrightness: Brightness.dark,
                              onPressed: () {
                                print("clicked");
                                if ((_formKey.currentState as FormState)
                                    .validate()) {
                                  print("验证通过");
                                } else {
                                  print("验证失败");
                                }
                                //ctx 是Button的上下文 挂在Form的子节点上 所以可以拿到FormState，而context是当前Route的上下文，比Form要更高层级，Form.of(context)获取不到下层的FormState.
                                if (Form.of(ctx).validate()) {
                                  print("验证通过");
                                } else {
                                  print("验证失败");
                                }
                              },
                              child: Text("登录"),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          key: _formKey,
          autovalidate: true,
        ),
      ),
    );
  }
}
