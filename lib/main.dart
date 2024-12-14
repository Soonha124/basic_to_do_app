import 'package:basic_to_do_app/View/AddToDo.dart';
import 'package:basic_to_do_app/View/Detail_ToDo.dart';
import 'package:basic_to_do_app/View/EditToDo.dart';
import 'package:basic_to_do_app/home/HomeScreen.dart';
import 'package:basic_to_do_app/auth/changePasswordScreen.dart';
import 'package:basic_to_do_app/auth/logInScreen.dart';
import 'package:basic_to_do_app/auth/sign_up_Screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(mainScreen());
}

class mainScreen extends StatefulWidget{

  @override
  State<mainScreen> createState()=> mainScreenState();

}

class mainScreenState extends State<mainScreen>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: logInScreen(),
    );
  }
}
