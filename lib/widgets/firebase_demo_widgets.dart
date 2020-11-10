import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Constants.dart';
import 'package:flutter_app_demo2/theme/WidgetsTheme.dart';

class FirebaseDemoWidget extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  BuildContext context1;
  final databaseReference = Firestore.instance;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    context1 = context;
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextInputTheme(
                  nameController,
                  Constants.TEXT_NAME,
                ),
                SizedBox(
                  height: 16,
                ),
                EmailInputThme(
                  nameController,
                  Constants.TEXT_EMAIL,
                ),
                SizedBox(
                  height: 16,
                ),
                TextInputTheme(
                  nameController,
                  Constants.TEXT_ADDRESS,
                ),
                AllButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget AllButtons() {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          child: Text(Constants.TEXT_CREATE),
          onPressed: () {
            createRecord();
          },
        ),
        RaisedButton(
          child: Text(Constants.TEXT_VIEW),
          onPressed: () {
            getData();
          },
        ),
        RaisedButton(
          child: Text(Constants.TEXT_UPDATE),
          onPressed: () {
            updateData();
          },
        ),
        RaisedButton(
          child: Text(Constants.TEXT_DELETE),
          onPressed: () {
            deleteData();
          },
        ),
      ],
    ));
  }

  void createRecord() async {
    print("Collections : $databaseReference");
    print(
        Constants.TEXT_NAME +" : "+ nameController.text +" "+Constants.TEXT_EMAIL +" : " + emailController.text+ " " +Constants.TEXT_ADDRESS +" : " +addressController.text);

    await databaseReference
        .collection("user_collection")
        .document("user_details")
        .setData({
      Constants.TEXT_NAME: nameController.text,
      Constants.TEXT_EMAIL: emailController.text,
      Constants.TEXT_ADDRESS: addressController.text
    });

    // DocumentReference ref = await databaseReference.collection("user_collection")
    //     .add({
    //   Constants.TEXT_NAME: nameController.text,
    //   Constants.TEXT_EMAIL: emailController.text,
    //   Constants.TEXT_ADDRESS: addressController.text
    // });

    //  print(ref.documentID);
  }

  void getData() {
    databaseReference
        .collection("user_collection")
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) =>
          //  print('${f.data}}')
          Scaffold.of(context1)
              .showSnackBar(SnackBar(content: Text(f.data.toString()))));
    });
  }

  void updateData() {
    try {
      databaseReference
          .collection('user_collection')
          .document('user_details')
          .updateData({
        Constants.TEXT_NAME: nameController.text,
        Constants.TEXT_EMAIL: emailController.text,
        Constants.TEXT_ADDRESS: addressController.text
      });
    } catch (e) {
      print(e.toString());
    }
  }

  void deleteData() {
    try {
      databaseReference
          .collection('user_collection')
          .document('user_details')
          .delete();
    } catch (e) {
      print(e.toString());
    }
  }
}
