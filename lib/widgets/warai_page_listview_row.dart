import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Constants.dart';
import 'package:flutter_app_demo2/theme/WidgetsTheme.dart';

class WaraiListRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          WaraiListRowName(),
          WaraiListRowImage(),
          WaraiListLikes(),
        ],
      ),
    );
  }
}

class WaraiListRowName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            Constants.IMG_IC_OPTION,
            color: Colors.white,
            height: 20,
            width: 20,
          ),
        ],
      ),
    );
  }
}

class WaraiListRowImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 250,
      child: new Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Align(
            child: ImageTheme(Constants.IMG_WARAI),
          ),
          Align(
            child: smallImageTheme(
              Constants.IMG_IC_PLAY,),
          ),
        ],
      ),
    );
  }
}

class WaraiListLikes extends StatelessWidget {
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
                      Constants.IMG_IC_UP,
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
                        Constants.IMG_IC_DOWN,
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
                      Constants.IMG_IC_COMMENT,
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
