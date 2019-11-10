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

  final FirebaseAuth _auth = FirebaseAuth.instance;
  static Future<void> signInWithGoogle() async {

    GoogleSignInAccount googleUser;


    await GoogleSignIn().signIn().then((GoogleSignInAccount account) async{
//      googleUser = account;
//    });
//    await _googleSignIn.signInSilently().then((GoogleSignInAccount acc)async{
      await account.authentication.then((GoogleSignInAuthentication authen) async{

        assert( authen.accessToken!= null);
        print('Access token');
        print(authen.accessToken);
        AuthCredential credential = GoogleAuthProvider.getCredential(idToken: authen.idToken, accessToken: authen.accessToken);
        print(credential.toString());
        assert(credential != null);
        print(credential);

        final AuthResult result = (await GoogleAuth()._auth.signInWithCredential(credential));
        final user = result.user;
//        print(user.displayName);
//        print(user.photoUrl);
          try {
            if (result.additionalUserInfo.isNewUser) {
              print('New user');
              Navigator.pushNamed(
                  GoogleAuth.context, SignUp.RouteName, arguments: Info(user: user, credential: credential));
            }
            else {
              print('old user');
//      Navigator.pushNamed(GoogleAuth.context, SignUp.RouteName , arguments: user);
              Navigator.pushNamed(GoogleAuth.context, ContentsPage.RouteName, arguments: Info(user:user, credential: credential));
            }
          } catch (error) {
            GoogleAuth()._error(GoogleAuth.context);
          }

      }).catchError((error){
        GoogleAuth()._error(GoogleAuth.context);
        print(error);
      });
    });






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
