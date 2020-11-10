import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Constants.dart';
import 'package:flutter_app_demo2/widgets/firebase_demo_widgets.dart';

class FirebaseDemo extends StatelessWidget{
  final databaseReference = Firestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(Constants.TEXT_FIREBASE_APPBAR),
      ),
      body: FirebaseDemoWidget() //center
    );
  }
}