import 'package:basic_to_do_app/auth/logInScreen.dart';
import 'package:basic_to_do_app/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home/HomeScreen.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreen();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController nameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmPasswordController = TextEditingController();

Future<void> saveUserDetails(String Sname, String Semail, String Spassword) async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  await sp.setString("name", nameController.text);
  await sp.setString("email", emailController.text);
  await sp.setString("password", passwordController.text);
}



class _signUpScreen extends State<signUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: 190,
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  label: Text("Email"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  label: Text("Full Name"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  label: Text("Password"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  label: Text("Confirm Password"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      minimumSize: Size(double.infinity, 44),
                      backgroundColor: Color(0xffF79E89),
                      foregroundColor: Color(0xffffffff)),
                  onPressed: () async {
                    if(nameController.text.isNotEmpty && emailController.text.isNotEmpty &&
                        passwordController.text.isNotEmpty && confirmPasswordController.text == passwordController.text)
                    {
                      saveUserDetails(nameController.text, emailController.text,
                          passwordController.text);

                      print(saveUserDetails(nameController.text, emailController.text,
                          passwordController.text));

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>
                              Homescreen()));

                    }else{
                      Fluttertoast.showToast(msg: "please enter valid data", toastLength: Toast.LENGTH_SHORT);
                    }
                  },
                  child: Text("SIGN UP")),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => logInScreen(
                              )));
                    },
                    child: Text("Log in"),
                    style: TextButton.styleFrom(
                        foregroundColor: Color(0xffF79E89)),
                  )
                ],
              )
              // Image.asset("images/logo.png")
            ],
          ),
        ),
      ),
    ));
  }
}
