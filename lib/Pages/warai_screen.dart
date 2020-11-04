import 'package:flutter/material.dart';

class WaraiScreen extends StatelessWidget {
  // This widget is the root of your application.
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
      home: MyHomePage(title: 'WARAI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    const appBarColor = const Color(0xff201f1f);

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 5.0,
          title:
          Row(
            children:[
              IconButton(
                  icon: new Image.asset(
                    'assets/images/nav_icon.png',
                    color: Colors.white,
                    height: 20,
                    width: 20,
                  ),
                  onPressed: null),
              Expanded(child: Center(child: Text(widget.title))),
              Image.asset(
                'assets/images/ic_user.png',
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              column1_data(),
              column2_data(),
              Expanded(child: column3_data()),
              column4_data(),
            ],
          ),
        ));
  }

  naviconclicked() {}
}
class column1_data extends StatefulWidget {
  @override
  _column1_data createState() => _column1_data();
}

class _column1_data extends State<column1_data> {
  @override
  Widget build(BuildContext context) {
    const color1 = const Color(0xff171717);
    final top_selected = true;
    final hot_selected = false;
    final new_selected = false;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: top_selected ? Colors.orange : color1,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                bottomLeft: const Radius.circular(10.0),
              )
          ),

          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 12.0,bottom: 12.0),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ic_top.png',
                    color: Colors.white,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "Top",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: color1,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 12.0,bottom: 12.0),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ic_hot.png',
                    color: Colors.white,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "Hot",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: color1,
              borderRadius: BorderRadius.only(
                topRight: const Radius.circular(10.0),
                bottomRight: const Radius.circular(10.0),
              )),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 12.0,bottom: 12.0),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/ic_new.png',
                    color: Colors.white,
                    height: 20,
                    width: 20,
                  ),
                  Text(
                    "New",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class column2_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const color1 = const Color(0xff171717);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text(
              "Books",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            'assets/images/ic_option.png',
            color: Colors.white,
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }
}

class column3_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Align(
            child: Image.asset('assets/images/img1.jpg'),
          ),
          Align(
            child: Image.asset(
              'assets/images/ic_play.png',
              height: 100,
              width: 100,
            ),
            alignment: AlignmentDirectional.center,
          ),
        ],
      ),
    );
  }
}

class column4_data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Image.asset(
                      'assets/images/ic_up.png',
                      color: Colors.white,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Text(
                    "240",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Image.asset(
                        'assets/images/ic_down.png',
                        color: Colors.white,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Text(
                      "28",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Image.asset(
                      'assets/images/ic_comment.png',
                      color: Colors.white,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Text(
                    "24",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}