import 'package:flutter/material.dart';
import 'package:flutter_app/file_io/FileOperationRoute.dart';
import 'package:flutter_app/file_io/HttpTestRoute.dart';
import 'package:flutter_app/file_io/WebSocketTest.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "WillPop",
          ),
        ),
        body: WebSocketRoute(),
      ),
    ));
