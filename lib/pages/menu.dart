//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:srijan_app/pages/About.dart';
//import 'package:srijan_app/pages/mainWorkshopPage.dart';
//import 'package:flutter/widgets.dart';
//
//class ContentsPage extends StatefulWidget {
//  static const RouteName = '\menu';
//  final FirebaseUser user;
//  ContentsPage({
//    @required this.user,
//});
//  @override
//  _MyHomePageState createState() => _MyHomePageState(user:user);
//}
//
//class _MyHomePageState extends State<ContentsPage> {
//  final FirebaseUser user;
//
//  _MyHomePageState({
//    @required this.user,
//});
//
//  @override
//  Widget build(BuildContext context) {
//    Size size = MediaQuery
//        .of(context)
//        .size;
//
//    return Scaffold(
//        body: Stack(
//            children: <Widget>[
//              //Main Background
//              Center(
//                  child: Image(
//                      image: AssetImage('assets/app_mp/main background.png'),
//                      width: size.width,
//                      height: size.height,
//                      fit: BoxFit.fill)),
//
//              //Background top above main
//              Positioned(
//                  top:110.0,
//                  right: 10.0,
//
//                  child: Image(
//                    image: AssetImage(
//                        'assets/app_mp/background_top above main.png'),
////
//                    height: 0.5*size.height,
//                    width: size.width,
//                    fit:BoxFit.cover,
//
//                  )
//              ),
//
//              //Circles upper right
//              Positioned(
//                top: 45.0,
////                right: -105,
//                child: Center(
//                    child: Image(
//                      image: AssetImage('assets/app_mp/circles_upper right.png'),
//                      width:1.55*size.width,
//                      height: 0.34*size.height,
//
//                    )),
//              ),
//
//              //triangles top right srijan 20
//              Positioned(
//                  top: 20.0,
//                  right:10.0,
//                  child: Image(
//                    image: AssetImage('assets/app_mp/triangle_top right behind srijan20.png'),
//                    width: 0.5*size.width,
//                    height:0.19*size.height,
//                  )),
//
//              //Srijan 20 upper right
//              Positioned(
//                  top: 40.0,
//                  right: 12.0,
//                  child: Image(
//                    image: AssetImage('assets/app_mp/srijan20_upper right.png'),
//                    width: 0.35 * size.width,
//                  )),
//
//              //Subhrojyoti Image
//              Positioned(
//                  top:41.0,
//                  left:51.0,
//                  child:ClipRRect(
//                    borderRadius: BorderRadius.circular(35.0),
//
//                    child: Container(
//                      height: 64.0,
//                      width: 60.0,
//                      child: Image(
//                          image:NetworkImage(user.photoUrl),
//                          fit:BoxFit.fill,
//                          width:0.19*size.width
//                      ),
//                    ),
//                  )
//              ),
//
//              Positioned(
//                  top:5.0,
//                  left:18.0,
//                  child:Image(
//                      image:AssetImage('assets/app_mp/circle_top left.png'),
//                      fit:BoxFit.fill,
//                      width:0.35*size.width,
//                      height:0.15*size.height
//                  )
//              ),
//
//              //Rounded Rectangle for Subhrojyoti
//
//              Positioned(
//                  top:110.0,
//                  left:10.0,
//                  child:Image(
//                      image:AssetImage('assets/app_mp/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
//                      fit:BoxFit.fill,
//                      width:0.45*size.width
//                  )
//              ),
//
//              //Welcome Subhrojyoti text
//              Positioned(
//                  top:115.0,
//                  left:65.0,
//                  child: Text(
//                    'WELCOME',
//                    style: TextStyle(color: Colors.white, fontSize: 12.0 , fontWeight: FontWeight.w600),
//                  )
//              ),
//              Positioned(
//                  top:130.0,
//                  left:60.0,
//
//                child:Container(
//                  alignment: Alignment(0.0 , 0.0),
//                  child: Text(
//                    '${user.displayName.substring(0, user.displayName.indexOf(' '))}' , style: TextStyle( color: Colors.deepOrangeAccent , fontSize: 14.0 ,
//                      fontWeight: FontWeight.w900 ),
//                    maxLines: 1,
//                  ),
//                ),
//              ),
//
//              //Centre Circle
//              Positioned(
//                  top:170.0,
//                  left:40.0,
//                  child:Image(
//                      image:AssetImage('assets/app_mp/circles_center bg.png'),
//                      fit:BoxFit.fill,
//                      width: 1.2*size.width,
//                      height:0.6*size.height
//                  )
//              ),
//
//              // Triangle Centre
//              Positioned(
//                  top:250.0,
//                  left:50.0,
//                  child:Image(
//                      image:AssetImage('assets/app_mp/triangle_center bg above circle.png'),
//                      fit:BoxFit.fill,
//                      width: 0.7*size.width,
//                      height:0.36*size.height
//                  )
//              ),
//
//
//              //Black overlay behind timer
//              Positioned(
//                  top:150.0,
//                  child:Image(
//                      image:AssetImage('assets/app_mp/black overlay_behind timer.png'),
//                      width:0.87*size.width
//                  )
//              ),
//
//              //Timer
////              Positioned(
////                  top:150,
////                  left:35,
////                  child:Image(
////                    image:AssetImage('assets/app_mp/timer.png'),
////                    width:0.3*size.width,
////                    height: 0.1*size.height,
////                  )
////              ),
//
//              //Bottom Background
//
//              Positioned(
//                  bottom:100.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/background_bottom.png'),
//                    fit:BoxFit.cover,
//                    width:size.width,
//                    height:0.39*size.height,
//                  )
//              ),
//
//
//
//
//
//              //About ImageBox
//              Positioned(
//                  top :220.0,
//                  left:35.0,
//                  child: FlatButton(
//                    onPressed: (){
//                      Navigator.pushNamed(context, AboutPage.routeName ,arguments: user);
//                    },
//                    child: Image(
//                        image:AssetImage('assets/app_mp/about.png'),
//                        width:1.2*size.width
//                    ),
//                  )
//              ),
//
//              //Events ImageBox
//              Positioned(
//                  top:310.0,
//                  left:35.0,
//                  child:Image(
//                      image:AssetImage('assets/app_mp/events.png'),
//                      width:1.2*size.width
//                  )
//              ),
//
//              //Workshops ImageBox
//              Positioned(
//                  top:400.0,
//                  left:35.0,
//
//                  child:FlatButton(
//                    onPressed: (){
//                      Navigator.pushNamed(context, WorkshopPage.routeName , arguments: user);
//                    },
//                    child: Image(
//                        image:AssetImage('assets/app_mp/workshops.png'),
//
//                        width:1.2*size.width
//                    ),
//                  )
//              ),
//
//              //Campus Ambassador behind icon
//              Positioned(
//                  bottom:14.0,
//                  right:5.0,
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/campus ambassador_behind icon .png'),
//                    fit:BoxFit.fill,
//                    height:0.18*size.height,
////                      width:2*size.width
//                  )
//              ),
//
//              //Campus Ambassador lower icon
//              Positioned(
//                  bottom: 64.0,
//                  right: 43.0,
//                  child: Image(
//                    image: AssetImage('assets/app_mp/campus ambassadors_icon lower.png'),
//                    fit:BoxFit.fill,
////                    width:0.7*size.width,
//
//                    height:0.06*size.height,
//                  )
//              ),
//
//              //Gallery behind Icon
//              Positioned(
//                  bottom: 13.0,
//                  left: 115.0,
//                  child: Image(
//                    image: AssetImage('assets/app_mp/gallery_behind icon.png'),
////                    color: Colors.white,
//                    fit:BoxFit.fill,
////                    width:0.7*size.width,
//                    height:0.18*size.height,
//                  ),
//              ),
//
//              //Gallery lower icon
//              Positioned(
//                  bottom: 66.0,
//                  right: 167.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/Gallery_icon lower.png'),
//                    fit:BoxFit.fill,
//                    height:0.042*size.height,
//                  )
//              ),
//
//              //Our sponsors behind icon
//              Positioned(
//                  bottom: 13.0,
//                  left: 10.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/our sponsors_behind icon.png'),
//                    fit:BoxFit.fill,
//                    height:0.18*size.height,
//                  )
//              ),
//
//              //Our sponsors lower icon
//              Positioned(
//                  bottom: 64.0,
//                  left: 28.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/our sponsors_icon lower.png'),
//                    fit:BoxFit.fill,
//                    height:0.056*size.height,
//                  )
//              ),
//
//              //Dividers and all lower icons.
//              Positioned(
//                  bottom: 1.0,
//                  right: 70.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/dividers social media_bottom.png'),
//                    color: Colors.white,
//                    fit:BoxFit.fill,
//                    width:0.7*size.width,
//                    height:0.05*size.height,
//                  )
//              ),
//              Positioned(
//                  bottom:1.5,
//                  left: 50.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/youtube_icon.png'),
//                    color: Colors.white,
//                    fit:BoxFit.fill,
//                    height:0.05*size.height,
//                  )
//              ),
//              Positioned(
//                  bottom:1.5,
//                  left: 100.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/phone_icon.png'),
//                    color: Colors.white,
//                    fit:BoxFit.fill,
////                    width:size.width,
//                    height:0.05*size.height,
//                  )
//              ),
//              Positioned(
//                  bottom:1.5,
//                  left: 150.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/mail_icon.png'),
//                    color: Colors.white,
//                    fit:BoxFit.fill,
////                    width:size.width,
//                    height:0.05*size.height,
//                  )
//              ),
//
//              Positioned(
//                  bottom:1.5,
//                  right: 120.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/facebook_icon.png'),
//                    color: Colors.white,
//                    fit:BoxFit.fill,
////                    width:size.width,
//                    height:0.05*size.height,
//                  )
//              ),
//              Positioned(
//                  bottom:1.5,
//                  right: 80.0,
//
//
//                  child: Image(
//                    image: AssetImage('assets/app_mp/instagram_icon.png'),
//                    color: Colors.white,
//                    fit:BoxFit.fill,
////                    width:size.width,
//                    height:0.052*size.height,
//                  )
//              ),
//
//
//
//
//            ]
//        ));
//  }}
//
//
//
//


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:srijan_app/pages/About.dart';
import 'package:srijan_app/pages/mainWorkshopPage.dart';
import 'package:srijan_app/pages/signUp.dart';

/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: ContentsPage(),
    );
  }
}*/


/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: ContentsPage(),
    );
  }
}*/


class ContentsPage extends StatefulWidget {
  static const RouteName = '\menu';
  final FirebaseUser user;
  final AuthCredential credential;
  ContentsPage({
    @required this.user,
    @required this.credential,
  });
  @override
  _MyHomePageState createState() => _MyHomePageState(user:user ,credential:credential);
}

class _MyHomePageState extends State<ContentsPage> {
  final FirebaseUser user;
  final AuthCredential credential;
  _MyHomePageState({
    @required this.user,
    @required this.credential,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
        body: Stack(
            children: <Widget>[
              //Main Background
              Center(
                  child: Image(
                      image: AssetImage('assets/app_mp/main background.png'),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      fit: BoxFit.fill)),

              //Background top above main
              Positioned(
                  bottom:MediaQuery.of(context).size.height/1.57,

                  child: Image(
                    image: AssetImage(
                        'assets/app_mp/background_top above main.png'),

                    height: MediaQuery.of(context).size.height/1.8,
                    width: MediaQuery.of(context).size.width/0.9,
                    fit:BoxFit.cover,
                  )
              ),

              //Circles upper right
              Positioned(
                bottom: MediaQuery.of(context).size.height/1.355,
                left: MediaQuery.of(context).size.width/2.25,
                child: Center(
                    child: Image(
                        image: AssetImage('assets/app_mp/circles_upper right.png'),
                        width:MediaQuery.of(context).size.width/1.5,
                        height: MediaQuery.of(context).size.height/3
                    )),
              ),

              //triangles top right srijan 20
              Positioned(
                  top: MediaQuery.of(context).size.height/30,
                  right:MediaQuery.of(context).size.width/35,
                  child: Image(
                      image: AssetImage('assets/app_mp/triangle_top right behind srijan20.png'),
                      width:MediaQuery.of(context).size.width/2.5,
                      height: MediaQuery.of(context).size.height/5.2
                  )),

              //Srijan 20 upper right
              Positioned(
                  top: MediaQuery.of(context).size.height/20,
                  right: MediaQuery.of(context).size.width/200,
                  child: Image(
                    image: AssetImage('assets/app_mp/srijan20_upper right.png'),
                    width: MediaQuery.of(context).size.width/2.4,
                  )),

              //Subhrojyoti Image
              Positioned(
                  top:MediaQuery.of(context).size.height/12.5,
                  left:MediaQuery.of(context).size.width/6.4,
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),

                    child: Container(
                      height:MediaQuery.of(context).size.height/12.5,
                      width:MediaQuery.of(context).size.width/6.8,
                      child: Image(
                          image:NetworkImage(user.photoUrl),
                          fit:BoxFit.fill,
                          width:MediaQuery.of(context).size.width/8,
                          height:MediaQuery.of(context).size.height/15                         ),
                    ),
                  )
              ),

              //Circle above user
              Positioned(
                  top:MediaQuery.of(context).size.height/28,
                  left:MediaQuery.of(context).size.width/11,
                  child:Image(
                      image:AssetImage('assets/app_mp/circle_top left.png'),
                      fit:BoxFit.fill,
                      width:MediaQuery.of(context).size.width/3.5,
                      height:MediaQuery.of(context).size.height/7.5
                  )
              ),

              //Rounded Rectangle for Subhrojyoti

              Positioned(
                  top:MediaQuery.of(context).size.height/6.8,
                  left:MediaQuery.of(context).size.width/10,
                  child:Image(
                      image:AssetImage('assets/app_mp/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
                      fit:BoxFit.fill,
                      width:MediaQuery.of(context).size.width/3.5
                  )
              ),


              //Welcome Subhrojyoti text
              Positioned(
                  top:MediaQuery.of(context).size.height/6.7,
                  left:MediaQuery.of(context).size.width/6,
                  child: Text(
                    'WELCOME',
                    style: TextStyle(color: Colors.white, fontSize: 12.0 , fontWeight: FontWeight.w600),
                  )
              ),

              //Display Name text
              Positioned(
                top:MediaQuery.of(context).size.height/6,
                left:MediaQuery.of(context).size.width/6,

                child:Container(
                  alignment: Alignment(0.0 , 0.0),
                  child: Text(
                    '${user.displayName.substring(0, user.displayName.indexOf(' '))}' , style: TextStyle( color: Colors.deepOrangeAccent , fontSize: 14.0 ,
                      fontWeight: FontWeight.w900 ),
                    maxLines: 1,
                  ),
                ),
              ),

              //Centre Circle
              Positioned(
                  top:MediaQuery.of(context).size.height/3.8,
                  left:MediaQuery.of(context).size.width/50,

                  child:Container(
//            color:Colors.red,

//                      height: 400,
//                      width:450,
                      height: MediaQuery.of(context).size.height/1.7,
                      width:MediaQuery.of(context).size.width/0.8,
                      child:Image(
                        image:AssetImage('assets/app_mp/circles_center bg.png'),
                        fit:BoxFit.fill,
                        /*width: MediaQuery.of(context).size.width/0.5,
                      height:MediaQuery.of(context).size.height/1.2*/

                      ))),


              // Triangle Centre
              Positioned(
                  top:MediaQuery.of(context).size.height/2.8,
                  left:MediaQuery.of(context).size.width/15,
                  child:Image(
                      image:AssetImage('assets/app_mp/triangle_center bg above circle.png'),
                      fit:BoxFit.fill,
                      width:MediaQuery.of(context).size.width/1.1,
                      height:MediaQuery.of(context).size.height/2.5
                  )
              ),



              //Black overlay behind timer
              Positioned(
                  top:MediaQuery.of(context).size.height/4.4,
                  child:Image(
                      image:AssetImage('assets/app_mp/black overlay_behind timer.png'),
                      width:MediaQuery.of(context).size.width/1.2
                  )
              ),

              //Timer
//              Positioned(
//                  top:150,
//                  left:35,
//                  child:Image(
//                    image:AssetImage('assets/app_mp/timer.png'),
//                    width:0.3*size.width,
//                    height: 0.1*size.height,
//                  )
//              ),

              //Bottom Background

              Positioned(
                  top:MediaQuery.of(context).size.height/1.37,


                  child: Image(
                    image: AssetImage('assets/app_mp/background_bottom.png'),
                    fit:BoxFit.cover,
                    width:size.width,
                    height:MediaQuery.of(context).size.height/2.5,
                  )
              ),






              //About ImageBox
              Positioned(
                  top :MediaQuery.of(context).size.height/3,
                  child: FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, AboutPage.routeName ,arguments: user);
                    },
                    child: Image(
                      image:AssetImage('assets/app_mp/about.png'),
                      width:MediaQuery.of(context).size.width/1.2,
                      height:MediaQuery.of(context).size.height/7.5,
                      fit:BoxFit.cover,
                    ),
                  )
              ),

              //Events ImageBox
              Positioned(
                  top :MediaQuery.of(context).size.height/2.1,
                  child:FlatButton(
                      child:Image(
                          image:AssetImage('assets/app_mp/events.png'),
                          width:MediaQuery.of(context).size.width/1.2,
                          height:MediaQuery.of(context).size.height/7.4,
                          fit:BoxFit.cover
                      ),
                      onPressed:(){}
                  )),

              //Workshops ImageBox
              Positioned(
                  top :MediaQuery.of(context).size.height/1.6,

                  child:FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, WorkshopPage.routeName , arguments: Info(user: user, credential: credential));
                    },
                    child: Image(
                        image:AssetImage('assets/app_mp/workshops.png'),
                        width:MediaQuery.of(context).size.width/1.2,
                        height:MediaQuery.of(context).size.height/7.4,
                        fit:BoxFit.cover
                    ),
                  )
              ),

              //Campus Ambassador behind icon
              Positioned(
                  bottom:MediaQuery.of(context).size.height/50,
                  right:MediaQuery.of(context).size.width/65,
                  child: Image(
                      image: AssetImage('assets/app_mp/campus ambassador_behind icon .png'),
                      fit:BoxFit.fill,
                      height:MediaQuery.of(context).size.height/5.5
                  )
              ),

              //Campus Ambassador lower icon
              Positioned(
                  bottom: MediaQuery.of(context).size.height/10,
                  right: MediaQuery.of(context).size.width/8,
                  child: Image(
                    image: AssetImage('assets/app_mp/campus ambassadors_icon lower.png'),
                    fit:BoxFit.fill,
//                    width:MediaQuery.of(context).size.width/4,

                    height:MediaQuery.of(context).size.height/17.5,
                  )
              ),

              //Gallery behind Icon
              Positioned(
                  bottom:MediaQuery.of(context).size.height/50,
                  right:MediaQuery.of(context).size.width/2.82,
                  child: Image(
                    image: AssetImage('assets/app_mp/gallery_behind icon.png'),
                    fit:BoxFit.fill,
                    height:MediaQuery.of(context).size.height/5.5,
                  )
              ),

              //Galery lower icon
              Positioned(
                  bottom: MediaQuery.of(context).size.height/9.5,
                  right: MediaQuery.of(context).size.width/2.15,


                  child: Image(
                    image: AssetImage('assets/app_mp/Gallery_icon lower.png'),
//                    color: Colors.white,
                    fit:BoxFit.fill,
                    width:MediaQuery.of(context).size.width/9.5,
                    height:MediaQuery.of(context).size.height/23,
                  )
              ),

              //Our sponsors behind icon
              Positioned(
                  bottom:MediaQuery.of(context).size.height/38,
                  right:MediaQuery.of(context).size.width/1.42,

                  child: Image(
                    image: AssetImage('assets/app_mp/our sponsors_behind icon.png'),
//                    color: Colors.white,
                    fit:BoxFit.fill,
                    width:MediaQuery.of(context).size.width/3,
                    height:MediaQuery.of(context).size.height/5.8,  )
              ),

              //Our sponsors lower icon
              Positioned(
                  bottom: MediaQuery.of(context).size.height/9.7,
                  right: MediaQuery.of(context).size.width/1.22,

                  child: Image(
                    image: AssetImage('assets/app_mp/our sponsors_icon lower.png'),
                    fit:BoxFit.fill,
                    height:MediaQuery.of(context).size.height/17.8,
                  )
              ),

              //Dividers and icons

          //Dividers and icons

              Positioned(
                  bottom:MediaQuery.of(context).size.height/230,
                  left: MediaQuery.of(context).size.width/7.5,

                  child: Image(
                    image: AssetImage('assets/app_mp/dividers social media_bottom.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
                    width:MediaQuery.of(context).size.width/1.5,
                    height:MediaQuery.of(context).size.height/20,
                  )
              ),
              Positioned(
                  bottom:MediaQuery.of(context).size.height/250,
                  left: MediaQuery.of(context).size.width/6,


                  child: Image(
                    image: AssetImage('assets/app_mp/youtube_icon.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:size.width,
                    height:MediaQuery.of(context).size.height/22,
                  )
              ),
              Positioned(
                  bottom:MediaQuery.of(context).size.height/250,
                  left: MediaQuery.of(context).size.width/3.3,


                  child: Image(
                    image: AssetImage('assets/app_mp/phone_icon.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:size.width,
                    height:MediaQuery.of(context).size.height/22,
                  )
              ),
              Positioned(
                  bottom:MediaQuery.of(context).size.height/250,
                  left: MediaQuery.of(context).size.width/2.3,


                  child: Image(
                    image: AssetImage('assets/app_mp/mail_icon.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:size.width,
                    height:MediaQuery.of(context).size.height/22,
                  )
              ),

              Positioned(
                  bottom:MediaQuery.of(context).size.height/250,
                  left: MediaQuery.of(context).size.width/1.73,

                  child: Image(
                    image: AssetImage('assets/app_mp/facebook_icon.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:size.width,
                    height:MediaQuery.of(context).size.height/22,
                  )
              ),

              Positioned(
                  bottom:MediaQuery.of(context).size.height/250,
                  left: MediaQuery.of(context).size.width/1.42,

                  child: Image(
                    image: AssetImage('assets/app_mp/instagram_icon.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:size.width,
                    height:MediaQuery.of(context).size.height/22,
                  )
              ),




            ]
        ));
  }}
