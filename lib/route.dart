import 'package:flutter/material.dart';
import 'package:srijan_app/Workshops/workshop1.dart';
import 'package:srijan_app/pages/About.dart';
import 'package:srijan_app/pages/login.dart';
import 'package:srijan_app/pages/mainWorkshopPage.dart';
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
        final Info args = settings.arguments;
        return MaterialPageRoute( builder: (_) => SignUp(user: args.user,credential: args.credential));
        break;

      case ContentsPage.RouteName:
        final Info args = settings.arguments;
        return MaterialPageRoute(builder: (_)=>ContentsPage(user: args.user , credential: args.credential));
        break;

      case WorkshopPage.routeName:
        final Info args = settings.arguments;
        return MaterialPageRoute(builder: (_)=> WorkshopPage(user: args.user,credential: args.credential));
        break;

      case AboutPage.routeName:
        final args =settings.arguments;
        return MaterialPageRoute(builder: (_)=> AboutPage(user: args));
        break;

      case WorkShop1.RouteName:
        final Info args =settings.arguments;
        return MaterialPageRoute(builder: (_)=> WorkShop1(user: args.user,credential: args.credential));
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