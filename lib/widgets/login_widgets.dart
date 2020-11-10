import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/Constants.dart';
import 'package:flutter_app_demo2/Pages/wecome_screen.dart';
import 'package:flutter_app_demo2/theme/WidgetsTheme.dart';

class Todo {
  final String email;
  final String password;
  Todo(this.email, this.password);
}

class LoginWidgets extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  Todo todos;
  LoginWidgets({Key key, @required this.todos}) : super(key: key);
  BuildContext context1;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
                EmailInputThme( emailController, Constants.TEXT_EMAIL,),
                SizedBox(height: 16,),
                PasswordInputThme( passwordController, Constants.TEXT_PASSWORD,),
                SizedBox(height: 16,),
                SizedBox(
                    width: double.infinity,
                    child: LoginButton()),
                ForgotPasswordText()
              ],
            ),
          ),
        ),
      ),
    );
  }
  RaisedButton LoginButton(){
    return  RaisedButton(
      onPressed: (){
        if(_formKey.currentState.validate()){
          _formKey.currentState.save();
          loginSuccess();
        }
      },
      child: Text(Constants.TEXT_SUBMIT),
    );
  }

  FlatButton ForgotPasswordText() {
    return FlatButton(
      onPressed: (){

      },
      textColor: Colors.black54,
      child: Text(Constants.TEXT_FORGOT_PASSWORD),
    );
  }

  void loginSuccess(){
    print(Constants.TEXT_EMAIL+" : "+emailController.text+" "+Constants.TEXT_PASSWORD+" : "+passwordController.text);
    final todo = Todo(
      emailController.text,
      passwordController.text,
    );
    Navigator.push(context1,MaterialPageRoute(builder: (context)=>new WelcomePage(todo),
    )
    );
  }
}

