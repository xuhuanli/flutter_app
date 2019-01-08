import 'package:flutter/material.dart';
import 'package:flutter_app/function_widgets/DirectionTest.dart';
import 'package:flutter_app/function_widgets/GestureDetectorTestRoute.dart';
import 'package:flutter_app/function_widgets/ThemeTestRoute.dart';
import 'package:flutter_app/function_widgets/WillPopScopeTestRoute.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "WillPop",
          ),
        ),
        body: BothDirectionTestRoute(),
      ),
    ));
