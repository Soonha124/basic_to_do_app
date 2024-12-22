
import 'package:basic_to_do_app/home/HomeScreen.dart';
import 'package:basic_to_do_app/auth/logInScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main(){
  runApp(mainScreen());
}

class mainScreen extends StatefulWidget{

  @override
  State<mainScreen> createState()=> mainScreenState();

}
var name;
var email;
var password;
Future<bool> getStatus() async{
  SharedPreferences sharedPref = await SharedPreferences.getInstance();
  name = sharedPref.getString("name");
  email = sharedPref.getString("email");
  password = sharedPref.getString("password");



  if(name?.isNotEmpty && email?.isNotEmpty){
    print("user ji email in main.dart ${email}");
    print("user jo name in main.dart ${name}");
    print("user jo password ${password}");
    return true;
  }
  else{
    return false;
  }
}

class mainScreenState extends State<mainScreen>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(future: getStatus(),
          builder: (context, snapshot){
        if(snapshot.connectionState ==  ConnectionState.waiting){
        return  CircularProgressIndicator();
        } else{
          return
            snapshot.hasData == true ? Homescreen() : logInScreen();
        }
          },),
    );
  }
}
