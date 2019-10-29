import 'package:flutter/material.dart';
import 'package:srijan_app/pages/homepage.dart';
import 'package:srijan_app/pages/login.dart';
import 'package:srijan_app/route.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: HomePage(),
      onGenerateRoute: Router.generateRoute,
    );
  }
}



















