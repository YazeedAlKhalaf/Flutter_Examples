import 'package:flutter/material.dart';
import 'package:random_users_http/pages/HomePage.dart';

/// This is the `function` that starts your app
void main() => runApp(MyApp());

/// This `widget` is the widget which
/// starts your app `MaterialApp`
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Users HTTP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
