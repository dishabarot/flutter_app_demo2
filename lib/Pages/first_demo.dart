import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Constants.dart';

class FirstDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Constants.FIRST_DEMO_APPBAR),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.account_circle, size: 50)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text( Constants.FIRST_DEMO_TITLE,
                        style: Theme.of(context).textTheme.title),
                    Text(Constants.FIRST_DEMO_SUBTITLE,
                        style: Theme.of(context).textTheme.subtitle),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [],
            ),
            SizedBox(height: 16),
            Row(
              children: [],
            ),
          ],
        ),
    );
  }
}