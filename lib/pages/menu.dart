import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:srijan_app/pages/About.dart';
import 'package:srijan_app/pages/mainWorkshopPage.dart';

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




