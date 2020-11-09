import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Route/routes.dart';
import 'package:flutter_app_demo2/theme/theme_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: MyTheme.myThemeData,
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}



