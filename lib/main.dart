import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.account_circle, size: 50)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Flutter McFlutter',
                        style: Theme.of(context).textTheme.headline),
                    Text('Experienced App Developer'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Expanded(child: Row(children: [],)),
          SizedBox(height: 16),
          Expanded(child: Row(children: [],)),
        ],
      ),
    );
  }
}
