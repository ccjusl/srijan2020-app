import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:srijan_app/authen/facebook.dart';
import 'package:srijan_app/authen/google.dart';
import 'package:srijan_app/pages/signUp.dart';


import 'package:srijan_app/route.dart';



class Login extends StatelessWidget {
  static const RouteName = '\login';

  @override
  Widget build(BuildContext context) {
    return
      Container(
          height: 700.0,
          width: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/background_upper.png'),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(

                child: Container(
                  height: 310.0,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('assets/circles_upper.png'),
                      )
                  ),
                  child: Center(
                    child: Container(

                      padding: EdgeInsets.all(0.0),
                      height: 230.0,
                      width: double.maxFinite,

                      decoration: BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment(0.0, -0.5),
                              image: AssetImage('assets/triangle_upper.png')
                          )
                      ),

                      child: Center(
                        child: Container(
                          width: 190.0,
                          height: 170.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                alignment: Alignment(0.2, -0.9),

                                image: AssetImage('assets/srijan20.png'),
                              )
                          ),

//                              color: Colors.white,
                        ),
                      ),

                    ),
                  ),
                ),
              ),


              Positioned(
                bottom: MediaQuery
                    .of(context)
                    .size
                    .height / 4.0,
                left: MediaQuery
                    .of(context)
                    .size
                    .width / 10.3,
                child: Container(

                  alignment: Alignment(0.0, 0.0),

                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 1.2,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 3.3,


                  decoration: BoxDecoration(


                      image: DecorationImage(
                        fit: BoxFit.fill,

                        image: AssetImage('assets/black_overlay.png',),
                      )
                  ),

                  child: Container(

                    child: Column(
//
                      children: <Widget>[

//
                        SizedBox(height: 40.0),

                        GestureDetector(
                            onTap: () async {
                              //FB Authentication code goes here
//                              FBAuth().getApi().then((FbReturn api){
//                                api.
//                              })
                            FBAuth.context = context;
                            await FBAuth.signInWithFB();
                            },
                            child: Image.asset('assets/fb.png', width: 270.0,
                              height: 50.0,
                              fit: BoxFit.fill,)
                        ),
                        SizedBox(height: 20.0),
                        GestureDetector(
                          onTap: () async{
                              // Google Authentication code goes here

                         GoogleAuth.context =context;
                         await GoogleAuth.signInWithGoogle();

                          },
                          child: Image.asset('assets/gmail.png', width: 270.0,
                            height: 50.0,
                            fit: BoxFit.fill,),
                        ),
                        SizedBox(height: 30.0),


                      ],
//                                ),
                    ),

                  ),

                ),

              ),
              Positioned(
                bottom: 30.0,
                left: MediaQuery
                    .of(context)
                    .size
                    .width / 7.5,
                child: Center(
                    child: Container(
                      height: 40.0,
                      width: 290.0,

                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
//                       border: Border.all(width: 2.0 , color: Colors.deepOrangeAccent , style: BorderStyle.solid ),

                        image: DecorationImage(
                          alignment: Alignment(0.0, 0.9),
                          fit: BoxFit.fill,
                          image: AssetImage('assets/trapezium_lower.png'),
                        ),

                      ),
                      child: Center(
                        child: Container(
                          height: 25.0,
                          width: 200.0,
                          padding: EdgeInsets.all(0.0),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/quote.png'),
                              )
                          ),
                        ),
                      ),

                    )

                ),

              )

            ],
          )
      );
  }
}