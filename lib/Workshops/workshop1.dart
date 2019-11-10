import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:srijan_app/pages/signUp.dart';
class WorkShop1 extends StatelessWidget {
  static const RouteName ='\work';

  final FirebaseUser user;
  final AuthCredential credential;
  WorkShop1({
    @required this.user,
    @required this.credential,
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
          fontSize: 18.0,
          decoration: TextDecoration.none,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
        child: Stack(
          children: <Widget>[
            //main background image
            Container(
              height: deviceHeight,
              width: deviceWidth,
              decoration: BoxDecoration(
                //shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage('assets/main background.png'),
                    fit: BoxFit.fill,
                  )),
            ),

            //back ground top image added
            Positioned(
              bottom: deviceHeight / 1.5,
              left: -deviceWidth / 10.0,
              right: -deviceWidth / 5.0,
              //Padding(
              //padding: EdgeInsets.all(0.0),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: deviceHeight / 2.0,
                  width: deviceWidth * 1.2,
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

            // black part of the center of the screen added
            Positioned(
              bottom: deviceHeight / 25.0,
              child: Container(
                alignment: Alignment(0.0, 0.0),
                width: deviceWidth / 1.0,
                height: deviceHeight / 1.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/black overlay_above bg.png',
                      ),
                    )),
              ),
            ),

            //social media sign deviders added
            Positioned(
              left: deviceWidth / 3.7,
              bottom: deviceHeight / 300.0,
              child: Container(
                height: deviceHeight / 20.0,
                width: deviceWidth / 2.3,
                //color: Colors.white,
                alignment: Alignment(0.0, 0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //fit: BoxFit.fill,
                    image: AssetImage('assets/dividers social media_bottom.png'),
                  ),
                ),
              ),
            ),

            //middle circular logo added
            Positioned(
              left: -deviceWidth / 10.0,
              // top: deviceHeight,
              right: -deviceWidth / 9.7,
              child: Center(
                child: Container(
                  height: deviceHeight,
                  width: deviceWidth * 1.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/circles_center bg.png'),
                        fit: BoxFit.fitWidth,
                      )),
                ),
              ),
            ),

            //upper right circular image added
            Positioned(
              right: -deviceWidth * 0.16,
              top: -deviceHeight * 0.162,
              child: Container(
                height: deviceHeight / 2.0,
                width: deviceWidth / 1.2,
                // color: Colors.white,
                alignment: Alignment(0.0, 0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //fit: BoxFit.fill,
                    image: AssetImage('assets/circles_upper right.png'),
                  ),
                ),
              ),
            ),

            // triangle behind srijan20 added
            Positioned(
              right: -deviceWidth * 0.01,
              top: -deviceHeight * 0.115,
              child: Container(
                height: deviceHeight / 1.85,
                width: deviceWidth / 1.85,
                // color: Colors.white,
                alignment: Alignment(0.0, 0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    //fit: BoxFit.fill,
                    image:
                    AssetImage('assets/triangle_top right behind srijan20.png'),
                  ),
                ),
              ),
            ),

            //srijan20 writing added
            Positioned(
              right: deviceWidth * 0.035,
              top: -deviceHeight * 0.005,
              child: Container(
                height: deviceWidth / 2.3,
                width: deviceWidth / 2.3,
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

            // upper left circle added
            Positioned(
              left: deviceWidth * 0.05,
              top: deviceHeight * 0.025,
              child: Container(
                height: deviceHeight * 0.34,
                width: deviceWidth * 0.34,
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

            //welcome dp added
            Positioned(
              left: deviceWidth * 0.152,
              top: deviceHeight * 0.18,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  // color: Colors.white,
                  alignment: Alignment(-1.0, -1.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(

                        user.photoUrl,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //),

            //rounded rectangle added under dp***********
            Positioned(
              left: deviceWidth * 0.041,
              top: deviceHeight * 0.258,
              child: Container(
                height: 50.0,
                width: 140.0,
                // color: Colors.white,
                alignment: Alignment(-1.0, -1.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        'assets/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
                  ),
                ),
              ),
            ),

            // welcome shubhrajyoti text added
//          Positioned(
//            left: 49.5,
//            top: 138.0,
//            child: Container(
//              height: 85.0,
//              width: 85.0,
//              // color: Colors.white,
//              alignment: Alignment(0.0, 0.0),
//              decoration: BoxDecoration(
//                image: DecorationImage(
//                  //fit: BoxFit.fill,
//                  image: AssetImage(
//                      'assets/Welcome Shubhrajyoti_top left.png'),
//                ),
//              ),
//            ),
//          ),

            Positioned(
              left: deviceWidth * 0.095,
              top: deviceHeight * 0.175,
              child: Container(
                height: deviceHeight * 0.26,
                width: deviceWidth * 0.26,
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

            // boundary behind workshop
            Positioned(
              left: deviceWidth * 0.01,
              top: deviceHeight * 0.3,
              child: Container(
                height: deviceHeight * 0.2,
                width: deviceWidth,
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

            //solid box behind workshop
            Positioned(
              left: deviceWidth * 0.14,
              top: deviceHeight * 0.302,
              child: Container(
                height: deviceHeight * 0.2,
                width: deviceWidth * 0.73,
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

            //workshop text
            Positioned(
              left: deviceWidth * 0.2,
              top: deviceHeight * 0.28,
              child: Container(
                height: deviceHeight * 0.25,
                width: deviceHeight * 0.36,
                // color: Colors.white,
                alignment: Alignment(0.0, 0.0),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/workshops text.png'),
                  ),
                ),
              ),
            ),

            /*5 SOCIAL MEDIA ICONS*/
            Positioned(
              left: deviceWidth * 0.29,
              bottom: -deviceHeight * 0.021,
              child: Container(
                height: deviceHeight * 0.1,
                width: deviceWidth * 0.072,
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
              left: deviceWidth * 0.37,
              bottom: -deviceHeight * 0.02,
              child: Container(
                height: deviceHeight * 0.1,
                width: deviceWidth * 0.072,
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
              left: deviceWidth * 0.46,
              bottom: -deviceHeight * 0.021,
              child: Container(
                height: deviceHeight * 0.1,
                width: deviceWidth * 0.072,
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
              left: deviceWidth * 0.55,
              bottom: -deviceHeight * 0.021,
              child: Container(
                height: deviceHeight * 0.1,
                width: deviceWidth * 0.072,
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
              left: deviceWidth * 0.635,
              bottom: -deviceHeight * 0.021,
              child: Container(
                height: deviceHeight * 0.1,
                width: deviceWidth * 0.065,
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
              right: deviceWidth * 0.3,
              //top: 290.0,
              bottom: deviceHeight * 0.44,
              child: Center(
                child: Container(
                  height: deviceHeight * 0.1,
                  width: deviceWidth * 0.4,
                  //color: Colors.white,
                  alignment: Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'assets/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
                    ),
                  ),
                  child: FlatButton(
                    onPressed: null,
                    child: welcomeText('NIVT'),
                  ),
                ),
              ),
            ),

            Positioned(
              left: deviceWidth * 0.1,
              right: deviceWidth * 0.1,
              top: deviceHeight * 0.56,
              child: Center(
                child: Container(
                  height: deviceHeight * 0.28,
                  width: deviceWidth * 0.75,

                  //color: Colors.white,
                  alignment: Alignment(0.0, 0.0),
                  child: SingleChildScrollView(
                    child: new ConstrainedBox(
                      constraints: new BoxConstraints(),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('''Modules for Workshop in Machine Learning
 1. Introduction to Data Science
 What is Data Science?
 What does Data Science involve?
 Era of Data Science
 Intelligence Vs Data Science
 Life cycle of Data Science
 Tools of Data Science

  2. Data Extraction, Wrangling, & Visualization
 Data Analysis Pipeline
 What is Data Extraction
 Types of Data
 Raw and Processed Data
 Data Wrangling
 Exploratory Data Analysis
 Visualization of Data

  3. Introduction to Machine Learning
 What is Machine Learning?
 Machine Learning Use-Cases
 Machine Learning Process Flow
 Machine Learning Categories

  4. Supervised Learning Algorithm
 Linear Regression, Multiple linear Regression, Logistic
 Regression

  5. Un-Supervised Learning Algorithm
 K-Means Clustering, Association Rule Mining
 ''',
                              style: TextStyle(color: Colors.white, fontSize: 14.0,decoration: TextDecoration.none),
                              textAlign: TextAlign.justify),
                          SizedBox(height: 30.0),
                          Text('''Case Study

1.Market Basket Analysis
    We live in a fast changing digital world. In today’s age customers expect the sellers to tell what they might want to buy. We personally end up using Amazon’s recommendations almost in all my visits to their site.This creates an interesting threat / opportunity situation for the retailers.
  If you can tell the customers what they might want to buy – it not only improves your sales, but also the customer experience and ultimately life time value.
2.Credit Card Fraud detection
   We will use a variety of machine learning algorithms that will be able to discern fraudulent from non-fraudulent one. By the end of this machine learning project, you will learn how to implement machine learning algorithms to perform classification.''',
                              style: TextStyle(fontSize: 14.0, color: Colors.white,decoration: TextDecoration.none),
                              textAlign: TextAlign.justify),
                          SizedBox(height: 20.0),
                          Text(
                            '''Guidelines for NIVT workshop:

• No pre-requisite knowledge needed.
• Laptop must be carried.
• Recommended laptop specifications: 2gb memory, 10gb hdd space, i3 3rd gen or higher.
• Required softwares will be provided.

Price for the workshop will be : 500Rs 
Click on the button below to pay ''',
                            style: TextStyle(fontSize: 14.0, color: Colors.white, decoration: TextDecoration.none),
                            textAlign: TextAlign.justify,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              right: deviceWidth * 0.31,
              //top: 450.0,
              bottom: deviceHeight * 0.06,
              child: Center(
                child: Container(
                  height: deviceHeight * 0.1,
                  width: deviceWidth * 0.4,
                  //color: Colors.white,
                  alignment: Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'assets/Rounded Rectangle_behind welcome Shubhrajyoti.png'),
                    ),
                  ),

                  //ADD CLICK TO REGISTER ROUTE HERE
                  child: FlatButton(
                    onPressed: () {
                      register(context);
                    },
                    child: Container(
                      // margin: const EdgeInsets.all(5.0),
                      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      alignment: Alignment(0.0, 0.0),
                      height: deviceHeight * 0.09,
                      width: deviceWidth * 0.5,
                      child: Text(
                        'CLICK HERE TO REGISTER',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          /*fontStyle: 'Raleway-Medium',*/
                          fontSize: 10.5,
                          decoration: TextDecoration.none,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void register(BuildContext context) {

    final FirebaseDatabase database = new FirebaseDatabase();
    var dname = 'srijan/profile/';
    var baseprofile = '/parentprofile';
    var ename = 'nivt';
    var eprofile = '/' + ename + '/status/summary';
    var cust = '/' + ename + '/support';
    var state = 0;

    database
        .reference()
        .child('$dname${user.uid}$baseprofile')
        .orderByValue()
        .once()
        .then((dataSnapshot) async {
      if (dataSnapshot.value == null) {
        _reg(context);
        // Make registration first dialog await
        Navigator.pushNamed(context, SignUp.RouteName, arguments: Info(user: user, credential: credential));
        return;
      } else {
        if (dataSnapshot.value['complete'] != 1) {
          print('hello');
          Navigator.pushNamed(context, SignUp.RouteName,
              arguments: Info(user: user, credential: credential));
          return;
        }
        print('Complete');
        print(dataSnapshot.value);
        print(dataSnapshot.value['complete']);
        database
            .reference()
            .child('$dname${user.uid}$eprofile')
            .orderByValue()
            .once()
            .then((dataSnapshot) async {
          // show alert
          if (dataSnapshot.value != null) { // if data already present clean the content
            final response = await http.post(
                'https://us-central1-srijanju20.cloudfunctions.net/app/clean',
                body: {'name' : ename},
                headers: {
                  'Authorization': 'Bearer ${await user.getIdToken()}',
                  // a gap introduced
                });

            var resp = await JsonDecoder().convert(response.body);
          }
          await _pay(context, ename, user); // Pay the money

          // Show the result
          _perform(context, dataSnapshot);
        }).catchError((error) {
          _error(context);
        });
      }
        }).catchError((error) {
          _error(context);
        });

    }


  Future<void> _pay(BuildContext context, String ename, FirebaseUser user) async{
    // The pay function
    await http.post(
        'https://us-central1-srijanju20.cloudfunctions.net/app/pay',
        body: {'name': ename},
        headers: {
    'Authorization': 'Bearer ${await user.getIdToken()}', // a gap introduced
    }).then((response) async {
      var resp = await jsonDecode(response.body);
      var postbody = {};
      resp.forEach((k, v) {
        if (k != 'URL') {
          postbody[k] = v;
        }
      });
      await http.post('${resp['URL']}', body: postbody);

  }).catchError((error) {
    print(error);
    _error(context);
    });
}

  void _perform( BuildContext context , DataSnapshot dataSnapshot){
    var ordId = "";
    var cst = "";
    var amt = "";
    var email = "";
    if (dataSnapshot.value['status'] == 1) {
      ordId = dataSnapshot.value['ORDER_ID'];
      cst = 'TRANSCATION SUCCESSFUL';
      email = dataSnapshot.value['email'];
      amt = dataSnapshot.value['amount'];
      _alert(context, 'Successful', cst);
    } else if (dataSnapshot.value['status'] == 0) {
      ordId = dataSnapshot.value['ORDER_ID'];
      cst = 'INCOMPLETE TRANSCATION';
      email = dataSnapshot.value['email'];
      amt = dataSnapshot.value['amount'];
      _alert(context, 'Unsuccessful', cst);

    } else if (dataSnapshot.value['status'] == 2) {
      ordId = dataSnapshot.value['ORDER_ID'];
      cst = 'PENDING Transcation';
      email = dataSnapshot.value['email'];
      amt = dataSnapshot.value['amount'];
      _alert(context, 'Pending', cst);

    }
    else{
      ordId = dataSnapshot.value['ORDER_ID'];
      cst = 'Failed Transcation';
      email = dataSnapshot.value['email'];
      amt = dataSnapshot.value['amount'];
      _alert(context, 'Failed', cst);

    }

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
          content: new Text(
              'Sources may be weak internet connection or server is down , please try after some time'),
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


  Future<void> _alert(BuildContext context, String title , String content) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(title),
          content: new Text(
              content),
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

  Future<void> _reg(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text('Register first'),
          content: new Text('You must be registered to proceed'),
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
}

