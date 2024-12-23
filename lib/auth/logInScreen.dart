import 'package:basic_to_do_app/home/HomeScreen.dart';
import 'package:basic_to_do_app/auth/changePasswordScreen.dart';
import 'package:basic_to_do_app/auth/sign_up_Screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class logInScreen extends StatefulWidget {
  const logInScreen({super.key});

  @override
  State<logInScreen> createState() => _logInScreenState();
}

String? userEmail;
String? userPassword;

Future<void> checkUserData() async {
  final SharedPreferences sp = await SharedPreferences.getInstance();
  userEmail = await sp.getString("email")!;
  userPassword = await sp.getString("password")!;

  print("userEmail: ${userEmail}");
  print("user Password : ${userPassword}");

}
TextEditingController loginEmailController = TextEditingController();
TextEditingController loginPasswordController = TextEditingController();

class _logInScreenState extends State<logInScreen> {

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
                controller: loginEmailController,
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
                controller: loginPasswordController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0)),
                  label: Text("Password"),
                ),
              ),

              Container(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => changePasswordScreen()));
                    },
                    style:
                        TextButton.styleFrom(alignment: Alignment.centerRight),
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.end,
                    )),
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
                  onPressed: () {
                    if (loginEmailController.text.isNotEmpty &&
                        loginPasswordController.text.isNotEmpty) {

                      checkUserData();

                      if(loginEmailController.text == userEmail && loginPasswordController.text == userPassword){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homescreen()));
                      }else{
                        Fluttertoast.showToast(msg: "Incorrect data", toastLength: Toast.LENGTH_SHORT);
                      }

                    } else {
                      Fluttertoast.showToast(
                          msg: "fill details", toastLength: Toast.LENGTH_SHORT);
                    }
                  },
                  child: Text("Log In")),
              SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => signUpScreen()));
                            },
                          text: " Sign Up",
                          style: TextStyle(color: Color(0xffF79E89)))
                    ]),
              ),
              // Image.asset("images/logo.png")
            ],
          ),
        ),
      ),
    ));
  }
}
