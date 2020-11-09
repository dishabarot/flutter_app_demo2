import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
                  "Name",
                ),
                SizedBox(
                  height: 16,
                ),
                EmailInputThme(
                  nameController,
                  "email",
                ),
                SizedBox(
                  height: 16,
                ),
                TextInputTheme(
                  nameController,
                  "Address",
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
          child: Text('Create Record'),
          onPressed: () {
            createRecord();
          },
        ),
        RaisedButton(
          child: Text('View Record'),
          onPressed: () {
            getData();
          },
        ),
        RaisedButton(
          child: Text('Update Record'),
          onPressed: () {
            updateData();
          },
        ),
        RaisedButton(
          child: Text('Delete Record'),
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
        "name : $nameController email: $emailController Address : $addressController");

    await databaseReference
        .collection("user_collection")
        .document("user_details")
        .setData({
      'name': nameController.text,
      'email': emailController.text,
      'address': addressController.text
    });

    // DocumentReference ref = await databaseReference.collection("user_collection")
    //     .add({
    //   'name': nameController.text,
    //   'email': emailController.text,
    //   'address': addressController.text
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
        'name': nameController.text,
        'email': emailController.text,
        'address': addressController.text
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
