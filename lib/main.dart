import 'package:flutter/material.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App Demo"),
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
                    Text('Flutter McFlutter',
                        style: Theme.of(context).textTheme.headline),
                    Text('Experienced App Developer'),
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
      ),
    );
  }
}
