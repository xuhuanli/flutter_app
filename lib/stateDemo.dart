import 'package:flutter/material.dart';

class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ParentWidgetState();
  }
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return TabBoxB(
      active: _active,
      onChanged: (bool newValue) {
        //这是一个回调函数
        print("newValue is $newValue");
        setState(() => _active = newValue);
      },
    );
  }

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }
}

class TabBoxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  const TabBoxB({Key key, this.active, @required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(active);
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? "active" : "inactive",
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
            color: active ? Colors.lightGreen[700] : Colors.grey[600]),
      ),
    );
  }

  void _handleTap() {
    onChanged(!active);
  }
}
