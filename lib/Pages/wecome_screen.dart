import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/widgets/login_widgets.dart';

class WelcomePage extends StatelessWidget {
  Todo todo;
  WelcomePage(Todo todo){
    this.todo=todo;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome User',
                  style: Theme.of(context).textTheme.title),
              SizedBox(height: 8),
              Text('Your Credentials'),
              Text('Email :  '+ todo.email + '\nPasword : '+todo.password,
                  style: Theme.of(context).textTheme.title),
            ],
          ),
        ),
    );
  }
}