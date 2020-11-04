import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Pages/first_demo.dart';
import 'package:flutter_app_demo2/Pages/landing.dart';
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