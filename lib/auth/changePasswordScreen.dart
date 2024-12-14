import 'package:basic_to_do_app/auth/logInScreen.dart';
import 'package:flutter/material.dart';

class changePasswordScreen extends StatelessWidget {
  const changePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>logInScreen()));
        },
            icon: Icon(Icons.arrow_back)),
      ),
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
            Image.asset(
              "assets/images/logo.png",
              height: 190,
            ),
            SizedBox(
              height: 120,
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
                onPressed: () {},
                child: Text("CHANGE PASSWORD")),

            // Image.asset("images/logo.png")
          ],
        ),
      ),
    ));
  }
}
