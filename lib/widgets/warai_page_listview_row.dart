import 'package:flutter/material.dart';

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
