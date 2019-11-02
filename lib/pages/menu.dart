import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:srijan_app/pages/About.dart';
import 'package:srijan_app/pages/mainWorkshopPage.dart';

class ContentsPage extends StatefulWidget {
  static const RouteName = '\menu';
  final FirebaseUser user;
  ContentsPage({
    @required this.user,
});
  @override
  _MyHomePageState createState() => _MyHomePageState(user:user);
}

class _MyHomePageState extends State<ContentsPage> {
  final FirebaseUser user;

  _MyHomePageState({
    @required this.user,
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
                      width: size.width,
                      height: size.height,
                      fit: BoxFit.fill)),

              //Background top above main
              Positioned(
                  top:-110,
                  right: -10,

                  child: Image(
                    image: AssetImage(
                        'assets/app_mp/background_top above main.png'),
//
                    height: 0.5*size.height,
                    width: size.width,
                    fit:BoxFit.cover,

                  )
              ),

              //Circles upper right
              Positioned(
                bottom: 470,
                left: 162,
                child: Center(
                    child: Image(
                        image: AssetImage('assets/app_mp/circles_upper right.png'),
                        width:MediaQuery.of(context).size.width/1.5,
                        height: MediaQuery.of(context).size.height/3
                    )),
              ),

              //triangles top right srijan 20
              Positioned(
                  top: 20,
                  right:10,
                  child: Image(
                      image: AssetImage('assets/app_mp/triangle_top right behind srijan20.png'),
                      width:MediaQuery.of(context).size.width/2.6,
                      height: MediaQuery.of(context).size.height/5.2
                  )),

              //Srijan 20 upper right
              Positioned(
                  top: 40,
                  right: 2,
                  child: Image(
                    image: AssetImage('assets/app_mp/srijan20_upper right.png'),
                    width: MediaQuery.of(context).size.width/2.5,
                  )),

              //Subhrojyoti Image
              Positioned(
                  top:41,
                  left:51,
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(35.0),
                    
                    child: Container(
                      height: 64.0,
                      width: 60.0,
                      child: Image(
                          image:NetworkImage(user.photoUrl),
                          fit:BoxFit.fill,
                          width:MediaQuery.of(context).size.width/7.8,
                          height:MediaQuery.of(context).size.height/12                         ),
                    ),
                  )
              ),

              Positioned(
                  top:22,
                  left:30,
                  child:Image(
                      image:AssetImage('assets/app_mp/circle_top left.png'),
                      fit:BoxFit.fill,
                      width:MediaQuery.of(context).size.width/3.8,
                      height:MediaQuery.of(context).size.height/8
                  )
              ),

              //Rounded Rectangle for Subhrojyoti

              Positioned(
                  top:95,
                  left:30,
                  child:Image(
                      image:AssetImage('assets/app_mp/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
                      fit:BoxFit.fill,
                      width:MediaQuery.of(context).size.width/3.5
                  )
              ),
              //Welcome Subhrojyoti text
              Positioned(
                  top:101,
                  left:41,
                  child: Text(
                    'WELCOME',
                    style: TextStyle(color: Colors.white, fontSize: 12.0 , fontWeight: FontWeight.w600),
                  )
              ),

              Positioned(
                  top:130,
                  left:60,

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
                  top:160,
//                  left:20,

                  child:Container(
//            color:Colors.red,

                      height: 400,
                      width:450,

                      child:Image(
                        image:AssetImage('assets/app_mp/circles_center bg.png'),
                        fit:BoxFit.fill,
                        /*width: MediaQuery.of(context).size.width/0.5,
                      height:MediaQuery.of(context).size.height/1.2*/

                      ))),


              // Triangle Centre
              Positioned(
                  top:230,
                  left:20,
                  child:Image(
                      image:AssetImage('assets/app_mp/triangle_center bg above circle.png'),
                      fit:BoxFit.fill,
                      width:MediaQuery.of(context).size.width/1.1,
                      height:MediaQuery.of(context).size.height/2.5
                  )
              ),



              //Black overlay behind timer
              Positioned(
                  top:145,
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
                  top:470,


                  child: Image(
                    image: AssetImage('assets/app_mp/background_bottom.png'),
                    fit:BoxFit.cover,
                    width:size.width,
                    height:MediaQuery.of(context).size.height/2.5,
                  )
              ),






              //About ImageBox
              Positioned(
                  top :220,
//                  left:-35,
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
                  top:310,
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
                  top:400,
//                  left:-35,

                  child:FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, WorkshopPage.routeName , arguments: user);
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
                  bottom:14,
                  right:5,

                  child: Image(
                      image: AssetImage('assets/app_mp/campus ambassador_behind icon .png'),
                      fit:BoxFit.fill,
                      height:MediaQuery.of(context).size.height/5.5
//                      width:2*size.width
                  )
              ),

              //Campus Ambassador lower icon
              Positioned(
                  bottom: 64,
                  right: 43,
                  child: Image(
                    image: AssetImage('assets/app_mp/campus ambassadors_icon lower.png'),
                    fit:BoxFit.fill,
//                    width:MediaQuery.of(context).size.width/4,

                    height:MediaQuery.of(context).size.height/15.5,
                  )
              ),

              //Gallery behind Icon
              //Gallery behind Icon
              Positioned(
                  bottom: 12,
                  left: 115,


                  child: Image(
                    image: AssetImage('assets/app_mp/gallery_behind icon.png'),
//                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:0.7*size.width,
                    height:MediaQuery.of(context).size.height/5.5,
                  )
              ),

              Positioned(
                  bottom: 66,
                  right: 167,


                  child: Image(
                    image: AssetImage('assets/app_mp/Gallery_icon lower.png'),
//                    color: Colors.white,
                    fit:BoxFit.fill,
                    width:MediaQuery.of(context).size.width/8.5,
                    height:MediaQuery.of(context).size.height/23,
                  )
              ),
              //Our sponsors behind icon
              Positioned(
                  bottom: 17,
                  right: 258,


                  child: Image(
                    image: AssetImage('assets/app_mp/our sponsors_behind icon.png'),
//                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:0.7*size.width,
                    height:MediaQuery.of(context).size.height/6.2,
                  )
              ),

              //Our sponsors lower icon
              Positioned(
                  bottom: 62,
                  left: 28,


                  child: Image(
                    image: AssetImage('assets/app_mp/our sponsors_icon lower.png'),
//                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:0.7*size.width,
                    height:MediaQuery.of(context).size.height/17.5,
                  )
              ),


              Positioned(
                  bottom: 1,
                  right: 70,


                  child: Image(
                    image: AssetImage('assets/app_mp/dividers social media_bottom.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
                    width:MediaQuery.of(context).size.width/1.5,
                    height:MediaQuery.of(context).size.height/20,
                  )
              ),
              Positioned(
                  bottom:1.8,
                  left: 60,


                  child: Image(
                    image: AssetImage('assets/app_mp/youtube_icon.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:size.width,
                    height:MediaQuery.of(context).size.height/22,
                  )
              ),
              Positioned(
                  bottom:1.5,
                  left: 110,


                  child: Image(
                    image: AssetImage('assets/app_mp/phone_icon.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:size.width,
                    height:MediaQuery.of(context).size.height/22,
                  )
              ),
              Positioned(
                  bottom:1.5,
                  left: 158,


                  child: Image(
                    image: AssetImage('assets/app_mp/mail_icon.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:size.width,
                    height:MediaQuery.of(context).size.height/22,
                  )
              ),

              Positioned(
                  bottom:2,
                  right: 120,


                  child: Image(
                    image: AssetImage('assets/app_mp/facebook_icon.png'),
                    color: Colors.white,
                    fit:BoxFit.fill,
//                    width:size.width,
                    height:MediaQuery.of(context).size.height/22,
                  )
              ),

              Positioned(
                  bottom:2,
                  right: 77,


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




