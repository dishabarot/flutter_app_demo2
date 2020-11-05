import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginWidgets extends StatefulWidget {
  _LoginWidgetsState createState() => _LoginWidgetsState();
}

class _LoginWidgetsState extends State<LoginWidgets> {
  final _formKey = GlobalKey<FormState>();

  String _email,_password= "";
  @override
  Widget build(BuildContext context) {
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
                EmailInput(),
                SizedBox(height: 16,),
                PasswordInput(),
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

  Widget EmailInput() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress ,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "abc@gmail.com",
        suffixIcon: Icon(Icons.person_outline),
        labelStyle: TextStyle(color: Colors.black,)
      ),
      textInputAction: TextInputAction.next,
      validator: (email)=>EmailValidator.validate(email)? null:"Invalid email address",
      onSaved: (email)=> _email = email,
    );
  }

  Widget PasswordInput() {
    return TextFormField(
      keyboardType: TextInputType.text ,
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        suffixIcon: Icon(Icons.lock),
          labelStyle: TextStyle(color: Colors.black,)

      ),
      textInputAction: TextInputAction.done,
      validator: (password){
        Pattern pattern =
            r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*[@#$%^&+=]).{8,}$';
        RegExp regex = new RegExp(pattern);
        if (!regex.hasMatch(password))
          return 'Invalid password';
        else
          return null;
      },
      onSaved: (password)=> _password = password,
    );
  }

  RaisedButton LoginButton(){
    return  RaisedButton(
      color:Colors.redAccent,
      onPressed: (){
        if(_formKey.currentState.validate()){
          _formKey.currentState.save();
          loginSuccess("Email: $_email\nPassword: $_password");
        }
      },
      child: Text("Submit",style: TextStyle(color: Colors.white),),
    );
  }

  FlatButton ForgotPasswordText() {
    return FlatButton(
      onPressed: (){

      },
      textColor: Colors.black54,
      child: Text('Forgot Password?'),
    );
  }

  void loginSuccess(String message){
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}

