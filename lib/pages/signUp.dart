import 'dart:collection';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:srijan_app/pages/menu.dart';



class SignUp extends StatefulWidget{
  static const RouteName = '\signup';
  final FirebaseUser user;
  SignUp({
    @required this.user,
});
  @override
  SignUpState createState() => SignUpState(user: user);
}

class SignUpState extends State<SignUp>{
  final _formKey = GlobalKey<FormState>();
  var state_SIGNED_OUT;
  var state_FETCH_PROFILE;
  var state_CREATE_BASICPROFILE;
  var state_CREATE_BASICPROFILE_EMAIL_VERIFY;
  var state_CREATE_BASICPROFILE_EMAIL_VERIFIED;
  var state_INVALID;
  var state;
  var dname='srijan/profile/';
  var baseprofile='/parentprofile';
  var complete='complete';
  final FirebaseDatabase database = new FirebaseDatabase();
  List<DropdownMenuItem<String>> listDrop =[];

  void addData(){
    listDrop=[];
    listDrop.add(DropdownMenuItem(
      child: new Text('1st YEAR'),
      value: '1st',
    ));
    listDrop.add(DropdownMenuItem(
      child: new Text('2nd YEAR'),
      value: '2nd',
    ));
    listDrop.add(DropdownMenuItem(
      child: new Text('3rd YEAR'),
      value: '3rd',
    ));
    listDrop.add(DropdownMenuItem(
      child: new Text('4th YEAR'),
      value: '4th',
    ));
  }
  final FirebaseUser user;
  SignUpState({
    @required this.user,
});
  TextEditingController controller1;
  TextEditingController controller2;
  TextEditingController controller3;
  TextEditingController controller4;
  TextEditingController controller5;
  TextEditingController controller6;

  @override
  void initState() {
    super.initState();
    controller1 = new TextEditingController();
    controller2 = new TextEditingController();
    controller3 = new TextEditingController();
    controller4 = new TextEditingController();
    controller5 = new TextEditingController();
    controller6 = new TextEditingController();
    controller1.text = user.displayName;
    controller2.text = (user.email == null ? "" :user.email);
    state_SIGNED_OUT=0;
    state_FETCH_PROFILE=1;
    state_CREATE_BASICPROFILE=3;
    state_CREATE_BASICPROFILE_EMAIL_VERIFY=4;
    state_CREATE_BASICPROFILE_EMAIL_VERIFIED=5;
    state_INVALID=-1;
    state = state_SIGNED_OUT;
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
            resizeToAvoidBottomInset : false,
            body: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/background.png'),
                    )),

                child: SingleChildScrollView(

                  child: Builder(
                      builder: (context) => Form(
                        key: _formKey,
                        child: Column(children: [
                          SizedBox(height: 20.0),
                          Container(
                            height: 120.0,
                            width: 280.0,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 4.0),
                                top: BorderSide(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 4.0),
                              ),
                            ),
                            child: Center(
                                child: Text(
                                  'Registrations',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 45.0,
                                  ),
                                )),
                          ),
                          SizedBox(height: 20.0),

                          // Name .
                          TextFormField(
                            controller: controller1,


                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                                labelText: 'Enter your name',
                                labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                hintText: "FirstName LastName",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  child: IconTheme(
                                    data: IconThemeData(
                                        color: Colors.white
                                    ),
                                    child: Icon(Icons.supervised_user_circle),
                                  ),
                                  padding: EdgeInsets.only(left: 15, right: 10),
                                )),
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w900),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Required *';
                              }
                            },
                            // onSaved: (val) =>
                            //     setState(() => _user.firstName = val),
                          ),
                          SizedBox(height: 10.0),
                          // Email

                          TextFormField(
                            controller: controller2,

                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                                labelText: 'Enter your email address',
                                labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                hintText: "xyz@abc.pqr",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  child: IconTheme(
                                    data: IconThemeData(
                                        color: Colors.white),
                                    child: Icon(Icons.email),
                                  ),
                                  padding: EdgeInsets.only(left: 15, right: 10),
                                )),
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w900),
                            validator: (value) {
                              if (!value.contains(new RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+'))) {
                                return 'Required *';
                              }
                            },
                            // onSaved: (val) =>
                            //     setState(() => _user.firstName = val),
                          ),
                          SizedBox(height: 10.0),
                          // College
                          TextFormField(
                            controller: controller3,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                                labelText: 'Enter College',
                                labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                hintText: "XYZ University",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  child: IconTheme(
                                    data: IconThemeData(
                                        color: Colors.white),
                                    child: Icon(Icons.location_city),
                                  ),
                                  padding: EdgeInsets.only(left: 15, right: 10),
                                )),
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w900),
                            validator: (value) {
                              if ((value.isEmpty) ||(value.length<6)  )  {
                                return 'not less than 6 characters';
                              }
                            },
                            // onSaved: (val) =>
                            //     setState(() => _user.firstName = val),
                          ),
                          SizedBox( height: 20.0),
                          // Degree
                          TextFormField(
                            controller: controller4,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                                labelText: 'Enter Degree',
                                labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                hintText: "Bachelor in XYZ degree",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  child: IconTheme(
                                    data: IconThemeData(
                                        color: Colors.white),
                                    child: Icon(Icons.library_books),
                                  ),
                                  padding: EdgeInsets.only(left: 15, right: 10),
                                )),
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w900),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Required *';
                              }
                            },
                            // onSaved: (val) =>
                            //     setState(() => _user.firstName = val),
                          ),
                          SizedBox(height: 10.0),
                          //Course
                          TextFormField(
                            controller: controller5,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                                labelText: 'Enter course detail',
                                labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                hintText: "Electrical Engineering..",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  child: IconTheme(
                                    data: IconThemeData(
                                        color: Colors.white),
                                    child: Icon(Icons.print),
                                  ),
                                  padding: EdgeInsets.only(left: 15, right: 10),
                                )),
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w900),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Required *';
                              }
                            },
                            // onSaved: (val) =>
                            //     setState(() => _user.firstName = val),
                          ),
                          SizedBox(height: 10.0),
                          //Year
                          TextFormField(
                            controller: controller6,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                                labelText: 'Enter current year in college',
                                labelStyle: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                hintText: "3rd",
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                ),
                                prefixIcon: Padding(
                                  child: IconTheme(
                                    data: IconThemeData(
                                        color: Colors.white),
                                    child: Icon(Icons.timer),
                                  ),
                                  padding: EdgeInsets.only(left: 15, right: 10),
                                )),
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w900),
                            validator: (value) {
                              if (value.isEmpty || ((value!='1st') && (value != '2nd') && (value!='3rd') && (value!='4th'))) {
                                return 'Required , 1st , 2nd , 3rd or 4th';
                              }
                            },
                            // onSaved: (val) =>
                            //     setState(() => _user.firstName = val),
                          ),
//                      drop(context),

                          SizedBox( height: 10.0),
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16.0),
                              child: RaisedButton(
                                elevation: 12.0,
                                  onPressed: () {
                                    final form = _formKey.currentState;
                                    if ( form.validate()){
                                        print('verified');
                                        form.save();
                                        _perform(context);


                                    }
                                  },
                                  child: Text('Register'))),
                        ]),
                      )),
                ))));
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Submitting form')));
  }
  _perform( BuildContext context) {
    final user_name = controller1.text;
    final user_email = controller2.text;
    final user_college = controller3.text;
    final user_degree = controller4.text;
    final user_course = controller5.text;
    final user_year = controller6.text;
    _showDialog(context);


    state = state_FETCH_PROFILE;
    database.reference().child('$dname${user.uid}$baseprofile').orderByValue().once().then((dataSnapshot) async{
      print(dataSnapshot.value.toString());
      print('Snapshot taken');

      if ( dataSnapshot.value == null){
        // Push into database
        print('snapshot null');
        print(user.email);
        print(user_email);
        print(user.isEmailVerified);
        var prof = new SplayTreeMap<dynamic , dynamic>();
        prof['name']=user_name;
        prof['email']=user_email;
        prof['college']=user_college;
        prof['course']=user_course;
        prof['year']=user_year;
        prof['degree'] =user_degree;

        prof['updatetime']=DateTime.now().toUtc().millisecondsSinceEpoch;
        print(DateTime.now().toUtc().millisecondsSinceEpoch);

        if ( user.email == user_email && user.isEmailVerified){
            print('pushing value');
              _push(prof);

        }
        else{
            _info(context);
            print('Updating email ,Click on register again');
            user.sendEmailVerification().then((void h) {
              user.updateEmail(user_email).then((void h) {
                if (user.isEmailVerified) {
                  _push(prof);
                }
              }).catchError((error) {
                if (error == 'ERROR_EMAIL_ALREADY_IN_USE') {
                  print('error');
                  print(error);
                  _error(context);
                }
                else {
                  print('diff error');
                  print(error);
                  _error(context);
                }
              });
            }).catchError((error){
              print(error);
              _error(context);
            });
          }



      }
      else if (dataSnapshot.value['complete'] == 1){
        print('contained');
        //alert user already registered
        // Using navigator push to events page
        await _alert(context);
        Navigator.pushNamed(context, ContentsPage.RouteName, arguments: user);

      }
      else{
          // verify email

        try {
          await user.updateEmail(user_email);

        }catch(error){
          print(error);
          print('Cant update email');
          _error(context);
        }
      }
    }).catchError((error){
      if(state==state_FETCH_PROFILE)
      {
        print(error);
        _error(context);
      }
    });



  }
  _push(snapshot) async{
    try {
    var ref = database.reference().child('${dname}${user.uid}${baseprofile}');
    print(ref.path);
    snapshot['complete']=1;
    print(snapshot.toString());

      await ref.set(snapshot);
      Navigator.pushNamed(context, ContentsPage.RouteName , arguments: user);

    }
    catch(error){
      _error(context);
      print(error);
      print('cant update db');
    }


  }

  Future<void> _alert(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text('Registration done'),
          content: new Text('Taking back to events '),
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


  Future<void> _error(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text('Error'),
          content: new Text('Sources may be weak internet connection or server is down , please try after some time'),
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


  Future<void> _info(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text('Sending verification email'),
          content: new Text('You may have to restart the app'),
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
//  final List<DropdownMenuItem<String>> listDrop =[];

  Widget drop(BuildContext context){
//    listDrop.add(new DropdownMenuItem(child: null))
    return DropdownButtonFormField(

        items: listDrop,//listdrop,
        hint: Text('Select your year' , style: TextStyle(color: Colors.white),),

      validator: (value) {
      if (value.isEmpty) {
        return 'Required *';
      }
    },
      onChanged: (value)=> controller6.text = value,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.white,
              width: 3,
            ),
          ),
          prefixIcon: Padding(
            child: IconTheme(
              data: IconThemeData(
                  color: Colors.white),
              child: Icon(Icons.timer),
            ),
            padding: EdgeInsets.only(left: 15, right: 10),
          )
      ),


    );
  }
}