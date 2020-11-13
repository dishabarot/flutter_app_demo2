import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Pages/api_calling_demo.dart';
import 'package:flutter_app_demo2/Pages/container_demo_screen.dart';
import 'package:flutter_app_demo2/Pages/firebase_demo.dart';
import 'package:flutter_app_demo2/Pages/hero_animation_screen.dart';
import 'package:flutter_app_demo2/Pages/images_demo.dart';
import 'package:flutter_app_demo2/Pages/login_screen.dart';
import 'package:flutter_app_demo2/Route/route_constants.dart';
import 'package:flutter_app_demo2/Pages/first_demo.dart';
import 'package:flutter_app_demo2/Pages/warai_screen.dart';

import 'formdata_demo.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListViewPages();
  }
}

class ListViewPages extends StatefulWidget {
  @override
  _ListViewPagesState createState() => _ListViewPagesState();
}

class _ListViewPagesState extends State<ListViewPages> {
  final List<String> _page_names = <String>[RouteConstants.PATH_FIRST,
    RouteConstants.PATH_WARAI,
    RouteConstants.PATH_LOGIN,
    RouteConstants.PATH_HERO,
    RouteConstants.PATH_FIREBASE,
    RouteConstants.PATH_APIDEMO,
    RouteConstants.PATH_CONTAINER,
    RouteConstants.PATH_IMAGES,
    RouteConstants.PATH_FORMDATA,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Add from here...
        appBar: AppBar(
          title: Text('Demo App'),
        ),
        body: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: _page_names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(2),
                          child: _buildRow('${_page_names[index]}',
                          ),
                        );
                      }
                  )
              )
            ]
        )
    );
  }

  Widget _buildRow(String page_name) {
    return ListTile(
      title: Text(
        page_name,
        style: Theme.of(context).textTheme.title,
      ),
      onTap: () {
        print("Inside : "+page_name);
        if(page_name == RouteConstants.PATH_FIRST)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>new FirstDemo()));
        else if(page_name == RouteConstants.PATH_WARAI)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>new WaraiScreen()));
        else if(page_name == RouteConstants.PATH_LOGIN)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>new LoginScreen()));
        else if(page_name == RouteConstants.PATH_HERO)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>new HeroAnimationScreen()));
        else if(page_name == RouteConstants.PATH_FIREBASE)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>new FirebaseDemo()));
        else if(page_name == RouteConstants.PATH_APIDEMO)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>new ApiCallingDemo()));
        else if(page_name == RouteConstants.PATH_CONTAINER)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>new ContainerDemo()));
      else if(page_name == RouteConstants.PATH_IMAGES)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>new ImagesDemo()));
      else if(page_name == RouteConstants.PATH_FORMDATA)
          Navigator.push(context,MaterialPageRoute(builder: (context)=>new FormDataDemo()));
      },
    );
  }
}