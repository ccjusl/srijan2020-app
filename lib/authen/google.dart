import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
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
  FirebaseUser fireuser;
  AuthResult auth;


  static Future<GoogleReturn> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser
        .authentication;
    assert(googleAuth.accessToken != null);
    assert(googleAuth.idToken != null);
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final AuthResult authResult = ( await _auth.signInWithCredential(credential));
    if (authResult.additionalUserInfo.isNewUser ) {
      print('New user');
      Navigator.pushNamed(GoogleAuth.context, SignUp.RouteName);
    }
    else {
      print('old user');
      Navigator.pushNamed(GoogleAuth.context, SignUp.RouteName);
    }
    final FirebaseUser user = authResult.user;

    assert(user.email != null);
    assert(user.displayName != null);
    assert(!user.isAnonymous);
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