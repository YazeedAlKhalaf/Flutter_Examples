import 'package:flutter/material.dart';
import 'package:weather_interface_ui/screens/page1.dart';
import 'package:weather_interface_ui/screens/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageViewer(),
    );
  }
}

class PageViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Page1(),
        Page2(),
      ],
    );
  }
}
