import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Constants.dart';
import 'package:flutter_app_demo2/Pages/api_calling_demo.dart';
import 'package:flutter_app_demo2/Pages/container_demo_screen.dart';
import 'package:flutter_app_demo2/Pages/firebase_demo.dart';
import 'package:flutter_app_demo2/Pages/first_demo.dart';
import 'package:flutter_app_demo2/Pages/formdata_demo.dart';
import 'package:flutter_app_demo2/Pages/hero_animation_screen.dart';
import 'package:flutter_app_demo2/Pages/images_demo.dart';
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
      case RouteConstants.PATH_APIDEMO:
        print("Inside  : " + page_name.name);
        return MaterialPageRoute(builder: (context) => new ApiCallingDemo());
      case RouteConstants.PATH_CONTAINER:
        print("Inside  : " + page_name.name);
        return MaterialPageRoute(builder: (context) => new ContainerDemo());
      case RouteConstants.PATH_IMAGES:
        print("Inside  : " + page_name.name);
        return MaterialPageRoute(builder: (context) => new ImagesDemo());
      case RouteConstants.PATH_FORMDATA:
        print("Inside  : " + page_name.name);
        return MaterialPageRoute(builder: (context) => new FormDataDemo());
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
          title: Text(Constants.TEXT_ERROR),
        ),
        body: Center(
          child: Text(Constants.TEXT_ERROR_ROUTES),
        ),
      );
    });
  }
}