import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Pages/hero_animation_screen.dart';
import 'package:flutter_app_demo2/Pages/login_screen.dart';
import 'package:flutter_app_demo2/Route/route_constants.dart';
import 'package:flutter_app_demo2/Pages/first_demo.dart';
import 'package:flutter_app_demo2/Pages/warai_screen.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WARAI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.black,
      ),
      home: ListViewPages(),
    );
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
  ];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);
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
        style: _biggerFont,
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
      },
    );
  }
}