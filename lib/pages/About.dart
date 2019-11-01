import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

/*void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //theme: theme,
      home: new WorkshopPage(),
    );
  }
}
*///just driver code

class AboutPage extends StatelessWidget {
  static const routeName = '/about';
  final double height1 = 80.0;
  final double width1 = 150.0;
  final FirebaseUser user;
  AboutPage({
    @required this.user,
});
  Widget welcomeText(String s) {
    var show = s;
    return Container(
      // margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      alignment: Alignment(0.0, 0.0),
      height: 60.0,
      width: 120.0,
      child: Text(
        show,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          /*fontStyle: 'Raleway-Medium',*/
          fontSize: 15.0,
          decoration: TextDecoration.none,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget welcomeText2(String s) {
    var show = s;
    return Container(
      // margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      alignment: Alignment(0.0, 0.0),
      height: 60.0,
      width: 120.0,
      child: Text(
        show,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          /*fontStyle: 'Raleway-Medium',*/
          fontSize: 30,
          decoration: TextDecoration.none,
          color: Colors.black,
        ),
      ),
    );
  }
Widget welcomeTextSize(String s, double i) {
    var show = s;
    return Container(
      // margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      alignment: Alignment(0.0, 0.0),
      height: 60.0,
      width: 120.0,
      child: Text(
        show,
        style: TextStyle(
          fontFamily: 'Raleway',
          fontWeight: FontWeight.bold,
          /*fontStyle: 'Raleway-Medium',*/
          fontSize: i,
          decoration: TextDecoration.none,
          color: Colors.black,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: 700.0,
            width: double.infinity,
            decoration: BoxDecoration(
                //shape: BoxShape.rectangle,
                image: DecorationImage(
              image: AssetImage('assets/main background.png'),
              fit: BoxFit.fill,
            )),
          ),
          Positioned(
            top: -80.0,
            width: 1000.0,
            left: -100.0,
            //Padding(
            //padding: EdgeInsets.all(0.0),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                height: 300.0,
                //color: Colors.white,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage('assets/background_top above main.png'),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            //),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 25.0,
            child: Container(
              alignment: Alignment(0.0, 0.0),
              width: MediaQuery.of(context).size.width / 1.0,
              height: MediaQuery.of(context).size.height / 1.2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/black overlay_above bg.png',
                ),
              )),
            ),
          ),
          Positioned(
            height: 1330.0,
            width: 200.0,
            left: MediaQuery.of(context).size.width / 4.0,
            child: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage('assets/dividers social media_bottom.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: -55.0,
            top: 125.0,
            right: -70.0,
            child: Center(
              child: Container(
                height: 470.0,
                width: 470.0,
                //color: Colors.white,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/circles_center bg.png'),
                  fit: BoxFit.fill,
                )),
              ),
            ),
          ),
          Positioned(
            right: -40.0,
            top: -100.0,
            child: Container(
              height: 320.0,
              width: 320.0,
              // color: Colors.white,
              alignment: Alignment(1.0, 1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage('assets/circles_upper right.png'),
                ),
              ),
            ),
          ),
          Positioned(
            right: 12.0,
            top: -26.0,
            child: Container(
              height: 220.0,
              width: 220.0,
              // color: Colors.white,
              alignment: Alignment(1.0, 1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/triangle_top right behind srijan20.png'),
                ),
              ),
            ),
          ),
          Positioned(
            right: 32.0,
            top: 0.0,
            child: Container(
              height: 170.0,
              width: 170.0,
              // color: Colors.white,
              alignment: Alignment(1.0, 1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage('assets/srijan20_upper right.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30.0,
            top: 60.0,
            child: Container(
              height: 120.0,
              width: 120.0,
              // color: Colors.white,
              alignment: Alignment(-0.5, -1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage('assets/circle_top left.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 62.0,
            top: 106.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35.0),
              child: Container(
                height: 55.0,
                width: 55.0,
                // color: Colors.white,
                alignment: Alignment(-1.0, -1.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //fit: BoxFit.fill,
                    image: NetworkImage(user.photoUrl),
                  ),
                ),
              ),
            ),
          ),
//          Positioned(
//            left: 62.0,
//            top: 106.0,
//            child: Container(
//              height: 55.0,
//              width: 55.0,
//              // color: Colors.white,
//              alignment: Alignment(-1.0, -1.0),
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  //fit: BoxFit.fill,
//                  image: AssetImage('assets/dp_to be changed.png'),
//                ),
//              ),
//            ),
//          ),
          Positioned(
            left: 10.0,
            top: 165.0,
            child: Container(
              height: 50.0,
              width: 160.0,
              // color: Colors.white,
              alignment: Alignment(-1.0, -1.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
                ),
              ),
            ),
          ),

          /*Positioned(
            left:68.5,
            top: 116.5,
            child: welcomeText(),
          ),*/

          Positioned(
            left: 49.5,
            top: 138.0,
            child: Container(
              height: 85.0,
              width: 85.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              child: Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
                maxLines: 1,
              ),
            ),
          ),

          Positioned(
            left: 49.5,
            top: 155.0,
            child: Container(
              height: 85.0,
              width: 85.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              child: Text(
                '${user.displayName.substring(0, user.displayName.indexOf(' '))}',
                style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w900),
                maxLines: 1,
              ),
            ),
          ),
          Positioned(
            left: 8.0,
            top: 145.0,
            child: Container(
              height: 200.0,
              width: 400.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/bounding box_behind workshop.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 55.0,
            top: 146.5,
            child: Container(
              height: 200.0,
              width: 300.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/solid box_behind workshops.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 80.0,
            top: 146.5,
            child: Container(
              height: 200.0,
              width: 240.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              child: welcomeText2('About'),
            ),
          ),
          Positioned(
            left: 152.0,
            bottom: 4.5,
            child: Container(
              height: 30.0,
              width: 30.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/youtube_icon.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 270.0,
            bottom: 4.5,
            child: Container(
              height: 30.0,
              width: 30.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/mail_icon.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 115.0,
            bottom: 4.5,
            child: Container(
              height: 30.0,
              width: 30.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/facebook_icon.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 235.0,
            bottom: 4.5,
            child: Container(
              height: 30.0,
              width: 30.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/phone_icon.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: 192.0,
            bottom: 5.6,
            child: Container(
              height: 28.0,
              width: 28.0,
              // color: Colors.white,
              alignment: Alignment(0.0, 0.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/instagram_icon.png'),
                ),
              ),
            ),
          ),
          Positioned(
              top: 300,
              child: Center(
                child: Stack(children: <Widget>[
                  Positioned(
                    child: Container(
                      height: 340,
                      width: 400,
                      // color: Colors.white,

                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              'assets/bounding box_behind workshop small.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20, 
                    left: 128, 
                    child: welcomeTextSize('Details', 25),),
                    Positioned(
                      top: 70, 
                      left: 50, 
                      child: Container(
                        height: 400, width: 300, 
                        child:Text(
                      "It is the largest of its sorts in the City of Joy. A multitude of myriad patterned events attracts thousands of students from technical and non-technical institutes throughout the nation. Interesting competitive events, inspiring lectures, informative seminars and delectable entertainment shows promote creative thinking in the spheres of technology, science, and management. Since its conception, brand Srijan has been growing exponentially." 
                      ,
                      
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 15, 
                      fontFamily: 'Raleway',
                      color: Colors.white)
                      ),
                      )
                      
                )]),
              )),
        ],
      ),
    );
  }
}
