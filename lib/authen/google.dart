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

  static Future<GoogleReturn> signInWithGoogle() async {
    FirebaseUser user;
    AuthResult authResult;
    AuthCredential credential;
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser
          .authentication;
      assert(googleAuth.accessToken != null);
      assert(googleAuth.idToken != null);

      credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
    }
    catch(error){
      print('sign in failed');
      print('error');
    }
    try {
      authResult = (await _auth.signInWithCredential(
          credential));
       user = authResult.user;
    }
    catch(error){
      print(error);
    }
    if (authResult.additionalUserInfo.isNewUser ) {
      print('New user');
      Navigator.pushNamed(GoogleAuth.context, SignUp.RouteName , arguments: user);
    }
    else {
      print('old user');
      Navigator.pushNamed(GoogleAuth.context, SignUp.RouteName , arguments: user);
      Navigator.pushNamed(GoogleAuth.context, ContentsPage.RouteName);

    }

    assert(await user.getIdToken() != null);

    final FirebaseUser currentUser = await _auth.currentUser();
    assert( user.uid == currentUser.uid);

    return GoogleReturn( user: user , auth: authResult);
  }

  GoogleReturn getApi(){
    signInWithGoogle().then((api){
      return api;
    });
  }

}
