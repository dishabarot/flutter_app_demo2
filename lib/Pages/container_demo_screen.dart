import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Demo'),
      ),
      body: ContainerWidgets(),
    );
  }
}

class ContainerWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/originals/24/47/6c/24476cde6e357a8591fcecbe9e06c31a.jpg"),
            fit: BoxFit.cover
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              border: Border.all(color: Colors.greenAccent, width: 2.0),
            ),
            child: Center(child: Text("Container 1")),
          ),
          Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.green, Colors.red])),
              child: Center(child: Text("Container 2"))),
          Container(
              color: Colors.blue,
              child: Center(
                  child:
                  SizedBox(
                    width: 180,
                      child: RaisedButton(
                        child: Text("Container 3"),
                        onPressed: null,
                      ),
                  )
              )
          )
        ],
      ),
    );
  }
}
