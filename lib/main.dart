import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/sample.dart';
import 'package:flutter_app/stateDemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        "pageOne":(context)=>TabbedAppBarSample()
      },
      title: "Battle",
      color: Colors.yellow,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light, //应用背景色会变黑
      ),
      home: HomePage(title: "Battle_Title"),
    );
  }

}

class HomePage extends StatefulWidget {
  final String title;
  final int initValue = 0;

  const HomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePage(title);
  }
}

class _HomePage extends State<HomePage> {
  final String title;
  int _counter;

  _HomePage(this.title);

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print("initState");
  }

  @override
  void didUpdateWidget(HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: _buildAppBar(title),
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "click the FloatButton more times",
              style: TextStyle(fontSize: 20.0),
            ),
            Text("$_counter"),
            ParentWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _increaseCounter();
          Navigator.of(context).pushNamed("pageOne");
          /*Navigator.of(context)
              .push(MaterialPageRoute(
                builder: (context) => TabbedAppBarSample(),
              ))
              .then((onValue) => print("sss"));*/
        },
        foregroundColor: Colors.black,
        child: Icon(Icons.add),
        tooltip: "Increment",
        mini: false,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("Item1"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("Item2"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text("Item3"),
          ),
        ],
      ),
    );
  }

  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  AppBar _buildAppBar(String title) {
    return AppBar(
      title: Text(title),
      centerTitle: false,
      leading: IconButton(
        icon: Icon(Icons.build),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      ),
      automaticallyImplyLeading: false,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
      elevation: 8.0,
      backgroundColor: Colors.purple,
      brightness: Brightness.dark,
      toolbarOpacity: 0.6,
    );
  }
}
