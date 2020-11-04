import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Route/route_constants.dart';
import 'package:flutter_app_demo2/Route/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}



