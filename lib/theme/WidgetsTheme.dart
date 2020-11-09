import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextInputTheme extends StatelessWidget {
  TextEditingController _controller;
  String label;
  TextInputTheme(this._controller, this.label);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      keyboardType: TextInputType.text,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(
            color: Colors.white70,
          ),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.white),
        ),
        errorBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.redAccent),
        ),
        focusedErrorBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.redAccent),
        ),
      ),
      textInputAction: TextInputAction.next,
      onSaved: (password) => label = password,
    );
  }
}

class PasswordInputThme extends StatelessWidget {
  TextEditingController _controller;
  String label;
  PasswordInputThme(this._controller, this.label);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      keyboardType: TextInputType.text,
      obscureText: true,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(
            color: Colors.white70,
          ),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.white),
        ),
        errorBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.redAccent),
        ),
        focusedErrorBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.redAccent),
        ),
      ),
      textInputAction: TextInputAction.next,
      validator: (password) {
        Pattern pattern =
            r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z])(?=.*[@#$%^&+=]).{8,}$';
        RegExp regex = new RegExp(pattern);
        if (!regex.hasMatch(password))
          return 'Invalid password';
        else
          return null;
      },
      onSaved: (password) => label = password,
    );
  }
}

class EmailInputThme extends StatelessWidget {
  TextEditingController _controller;
  String label;
  EmailInputThme(this._controller, this.label);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(
            color: Colors.white70,
          ),
        ),
        focusedBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.white),
        ),
        errorBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.redAccent),
        ),
        focusedErrorBorder: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(10.0),
          borderSide: new BorderSide(color: Colors.redAccent),
        ),
      ),
      textInputAction: TextInputAction.next,
      validator: (email) =>
          EmailValidator.validate(email) ? null : "Invalid email address",
      onSaved: (email) => label = email,
    );
  }
}

class ImageTheme extends StatelessWidget {
  String img_name;

  ImageTheme(this.img_name);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      img_name,
      alignment: AlignmentDirectional.center,
    );
  }
}

class smallImageTheme extends StatelessWidget {
  String img_name;
  smallImageTheme(this.img_name);
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      img_name,
      height: 100,
      width: 100,
      alignment: AlignmentDirectional.center,
    );
  }
}
