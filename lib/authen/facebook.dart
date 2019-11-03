import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'package:srijan_app/pages/login.dart';
import 'package:srijan_app/pages/signUp.dart';
import 'package:srijan_app/pages/menu.dart';



class FbReturn{
  final AuthResult auth;
  final Map<dynamic,  dynamic> data;

  FbReturn({
    @required this.auth,
    @required this.data
});

}

class FBAuth {
  static  BuildContext context;


  final FirebaseAuth _auth = FirebaseAuth.instance;
  static Future< void > signInWithFB() async{
    final FacebookLoginResult result  = await FacebookLogin().logIn(['public_profile']);

    AuthResult authResult = null;
    FirebaseUser user =null;
    AuthCredential credential =null;
    if ( result.status == FacebookLoginStatus.loggedIn) {
      credential = FacebookAuthProvider.getCredential(
          accessToken: result.accessToken.token);

      authResult = (await FBAuth()._auth.signInWithCredential(
          credential));
      user = authResult.user;
    }


    if (authResult.additionalUserInfo.isNewUser ) {
      print('New user');
      Navigator.pushNamed(FBAuth.context, SignUp.RouteName, arguments: Info(
        user: user,credential:credential
      ));
    }
    else {
      print('old user');
//      Navigator.pushNamed(FBAuth.context, SignUp.RouteName , arguments: user);// change to events page
      Navigator.pushNamed(FBAuth.context, ContentsPage.RouteName, arguments: Info(user: user , credential: credential));// change to events page
    }

  }
  FbReturn getApi(){
    signInWithFB().then((api){
      print('Returning Api');
      return api;
    });
  }


}
