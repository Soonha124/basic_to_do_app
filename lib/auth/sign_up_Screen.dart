import 'package:basic_to_do_app/auth/logInScreen.dart';
import 'package:basic_to_do_app/main.dart';
import 'package:flutter/material.dart';

import '../home/HomeScreen.dart';

class signUpScreen extends StatelessWidget {
  const signUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset("assets/images/logo.png",
            height: 190,),
            SizedBox(
              height: 50,
            ),
            TextField(
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Homescreen()));

                },
                child: Text("SIGN UP")),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Have an account?"),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> logInScreen()));

                },
                    child: Text("Log in"),
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xffF79E89)
                  ),)
              ],
            )
            // Image.asset("images/logo.png")
          ],
        ),
      ),
    )
    );
  }
}
