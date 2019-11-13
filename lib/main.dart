import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:srijan_app/authen/facebook.dart';
import 'package:srijan_app/authen/google.dart';
import 'package:srijan_app/pages/homepage.dart';
import 'package:srijan_app/pages/login.dart';
import 'package:srijan_app/route.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SRIJAN 2020',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: HomePage(),
      onGenerateRoute: Router.generateRoute,
    );
  }

  target(BuildContext context) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int code = (prefs.getInt('code') ?? 0);
    if ( code == 0){
      return HomePage();
    }
    else if ( code == 1){ //FB
      FBAuth.context = context;
      await FBAuth.signInWithFB();

    }
    else if ( code == 2){ //Google
      GoogleAuth.context =context;
      await GoogleAuth.signInWithGoogle();
    }
  }
}



















