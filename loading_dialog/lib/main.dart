import 'dart:async';

import 'package:flutter/material.dart';
import 'package:loading_dialog/common/loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void showDialog() {
    LoadingScreen.show(context, "Loading, please wait");
    Future.delayed(Duration(seconds: 5), () {
      // 5s over, navigate to a new page
      LoadingScreen.hide(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: RaisedButton(
        onPressed: showDialog,
        child: Text("Show"),
      )),
    );
  }
}
