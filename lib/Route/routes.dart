import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Pages/firebase_demo.dart';
import 'package:flutter_app_demo2/Pages/first_demo.dart';
import 'package:flutter_app_demo2/Pages/hero_animation_screen.dart';
import 'package:flutter_app_demo2/Pages/landing.dart';
import 'package:flutter_app_demo2/Pages/login_screen.dart';
import 'package:flutter_app_demo2/Pages/warai_screen.dart';
import 'package:flutter_app_demo2/Route/route_constants.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings page_name) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = page_name.arguments;
    print("let's got this route => : " + page_name.name);
    switch (page_name.name) {
       case "/":
         return MaterialPageRoute(builder: (context) => new LandingPage());
      case RouteConstants.PATH_WARAI:
        print("Inside  : " + page_name.name);
        return MaterialPageRoute(builder: (context) => new WaraiScreen());
      case RouteConstants.PATH_FIRST:
        print("Inside  : " + page_name.name);
        return MaterialPageRoute(builder: (context) => new FirstDemo());
      case RouteConstants.PATH_FIRST:
        print("Inside  : " + page_name.name);
        return MaterialPageRoute(builder: (context) => new LoginScreen());
       case RouteConstants.PATH_HERO:
        print("Inside  : " + page_name.name);
        return MaterialPageRoute(builder: (context) => new HeroAnimationScreen());
      case RouteConstants.PATH_FIREBASE:
        print("Inside  : " + page_name.name);
        return MaterialPageRoute(builder: (context) => new FirebaseDemo());
      default:
      // If there is no such named route in the switch statement, e.g. /third
        print("default we got route : " + page_name.name);
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Look like you have take wrong turn!'),
        ),
      );
    });
  }
}