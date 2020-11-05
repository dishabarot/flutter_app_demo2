import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/widgets/login_widgets.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: new Icon(Icons.arrow_back_ios,color: Colors.black,
            ), onPressed: () {
          Navigator.of(context).pop(true);
        },
        ),
        title: Text("Back",style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopWidgts(),
            LoginWidgets(),
          ],
        ),
      ),
    );
  }
}

class TopWidgts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 10.0,top: 30.0,bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/ic_demo_logo.png',
          color: Colors.red,
          height: 80,
          width: 80,),

          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 20.0),
            child: Text("Proceed With Your",
              style: TextStyle(
                fontSize: 20
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 5.0),
            child: Text("Login",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}
