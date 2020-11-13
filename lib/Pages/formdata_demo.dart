import 'package:flutter/material.dart';
import 'package:flutter_app_demo2/theme/WidgetsTheme.dart';

import '../Constants.dart';

class FormDataDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>_FormDataDemo();
}

class _FormDataDemo extends State<FormDataDemo>{
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  List<String> hobbies_list;
  bool read_hobby_value = false;
  bool write_hobby_value = false;
  bool travel_hobby_value = false;
  bool cook_hobby_value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Form Data"),
        ),
      body: Container(
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
                  Text("Select Your Hobbies : ",
                  style: Theme.of(context).textTheme.title,),
                  Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.all();
                    // ),
                    color: Colors.white,
                    child: Column(
                      children: [
                        CheckboxListTile(
                            value: read_hobby_value,
                            title: Text("Reading",),
                            secondary: Icon(Icons.menu_book,),
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool value){
                              setState(() {
                                read_hobby_value = value;
                              });
                              if(read_hobby_value)
                              {
                                hobbies_list.add("Reading");
                              }
                              else{
                                if(hobbies_list.contains("Reading"))
                                {
                                  hobbies_list.remove("Reading");
                                }
                              }
                            }),
                        CheckboxListTile(
                            value: write_hobby_value,
                            title: Text("Writing",),
                            secondary: Icon(Icons.create,),
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (value){
                              setState(() {
                                write_hobby_value = value;
                              });
                              if(write_hobby_value)
                              {
                                hobbies_list.add("Writing");
                              }
                              else{
                                if(hobbies_list.contains("Writing"))
                                {
                                  hobbies_list.remove("Writing");
                                }
                              }
                            }),
                        CheckboxListTile(
                            value: travel_hobby_value,
                            title: Text("Travelling",),
                            secondary: Icon(Icons.card_travel),
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            onChanged: (value){
                              setState(() {
                                travel_hobby_value = value;
                              });
                              if(travel_hobby_value)
                              {
                                hobbies_list.add("Travelling");
                              }
                              else{
                                if(hobbies_list.contains("Travelling"))
                                {
                                  hobbies_list.remove("Travelling");
                                }
                              }
                            }),
                        CheckboxListTile(
                            value: cook_hobby_value,
                            title: Text("Cooking",),
                            secondary: Icon(Icons.ac_unit_sharp,),
                            activeColor: Colors.black,
                            checkColor: Colors.white,
                            selected: true,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (value){
                              setState(() {
                                cook_hobby_value = value;
                              });
                              if(cook_hobby_value)
                              {
                                hobbies_list.add("Cooking");
                              }
                              else{
                                if(hobbies_list.contains("Cooking"))
                                {
                                  hobbies_list.remove("Cooking");
                                }
                              }
                            }),
                        RaisedButton(
                          child: Text("Submit"),
                          onPressed: () {
                            Scaffold.of(context).showSnackBar(SnackBar(content: Text("Hobbies : $hobbies_list")));
                        },)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    ),
    );
  }
}