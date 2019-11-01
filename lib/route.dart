import 'package:flutter/material.dart';
import 'package:srijan_app/pages/login.dart';
import 'package:srijan_app/pages/signUp.dart';
import 'package:srijan_app/pages/menu.dart';


class Router{

  static Route<dynamic> generateRoute( RouteSettings settings){
    // settings contains info like -
    // route name and arguments
    switch(settings.name){
      case Login.RouteName:
        return MaterialPageRoute( builder: (_) => Login());
        break;

      case SignUp.RouteName:
        final args = settings.arguments;
        return MaterialPageRoute( builder: (_) => SignUp(user: args));
        break;

      case ContentsPage.RouteName:
        return MaterialPageRoute(builder: (_)=>ContentsPage());
        break;

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
        break;

    }

  }

}