import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Pages/landing.dart';
import 'package:flutter_app_demo2/widgets/warai_tabs.dart';
import 'package:flutter_app_demo2/widgets/warai_main_listview.dart';

class WaraiScreen extends StatefulWidget {
  WaraiScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WaraiScreen> {
  Widget build(BuildContext context) {
    const appBarColor = const Color(0xff201f1f);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 5.0,
          leading: IconButton(
              icon: new Image.asset(
                'assets/images/nav_icon.png',
                color: Colors.white,
                height: 20,
                width: 20,
              ),
              onPressed: null),
          centerTitle: true,
          title: Center(child: Text("WARAI", textAlign: TextAlign.center)),
        actions: [
            Image.asset(
              'assets/images/ic_user.png',
              height: 30,
              width: 30,
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              Center(child: WaraiTabs()),
              Expanded(child: WaraiListView(),
              ),
            ],
          ),
        ));
  }
}

