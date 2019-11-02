import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:srijan_app/pages/menu.dart';
import 'dart:io';

import 'package:srijan_app/pages/signUp.dart';


class GoogleReturn{
  final AuthResult auth;
  final FirebaseUser user;
  GoogleReturn({
    @required this.user,
    @required this.auth,
});
}
class GoogleAuth {
  static BuildContext context;
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static GoogleSignIn _googleSignIn = GoogleSignIn();

  static Future<void> signInWithGoogle() async {
    FirebaseUser user;
    AuthResult authResult;
    AuthCredential credential;
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser
          .authentication;


      assert(googleAuth.accessToken != null);
      assert(googleAuth.idToken != null);
      assert(await user.getIdToken() != null);

      credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
    }
    catch(error){
      GoogleAuth()._error(GoogleAuth.context);
      print('sign in failed');
      print('error');
    }
    try {
      authResult = (await _auth.signInWithCredential(
          credential));
       user = authResult.user;
    }
    catch(error){
      GoogleAuth()._error(GoogleAuth.context);
      print(error);
    }
    try {


      final FirebaseUser currentUser = await _auth.currentUser();
      assert( user.uid == currentUser.uid);
    }
    catch(error){
      print(error);
    }
    try {
      if (authResult.additionalUserInfo.isNewUser) {
        print('New user');
        Navigator.pushNamed(
            GoogleAuth.context, SignUp.RouteName, arguments: user);
      }
      else {
        print('old user');
//      Navigator.pushNamed(GoogleAuth.context, SignUp.RouteName , arguments: user);
        Navigator.pushNamed(
            GoogleAuth.context, ContentsPage.RouteName, arguments: user);
      }
    }catch(error){
      GoogleAuth()._error(GoogleAuth.context);
    }



//    return GoogleReturn( user: user , auth: authResult);
  }

  Future<void> _error(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text('Error'),
          content: new Text('Sources may be weak internet connection or server is down , please restart the app or try after some time'),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  GoogleReturn getApi(){
    signInWithGoogle().then((api){
      return api;
    });
  }

}
