import 'package:flutter/material.dart';
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
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: new Image.asset(
                'assets/images/nav_icon.png',
                color: Colors.white,
                height: 20,
                width: 20,
              ),
              onPressed: null),
          title: Center(child: Text("WARAI")),
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

