import 'package:basic_to_do_app/home/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../auth/sign_up_Screen.dart';

class ProfileScreen extends StatefulWidget {
  String? email;
  String? name;
  String? password;

  ProfileScreen({super.key, this.email, this.name, this.password});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  Future<void> clearUserData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    setState(() {
      widget.name = "";
      widget.email = "";
      widget.password = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Homescreen()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "TO DO LIST",
        ),
        titleTextStyle: TextStyle(
            color: Color(0xffF79E89),
            fontSize: 24,
            fontWeight: FontWeight.w900),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              icon: Icon(
                Icons.settings_outlined,
                size: 26,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 450,
              child: SvgPicture.asset(
                'assets/svg/rafiki.svg',
                semanticsLabel: 'My SVG Image',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Full Name",
                  style: TextStyle(color: Color(0x27272780), fontSize: 16),
                ),
                Text(
                  widget.name!,
                  style: TextStyle(
                      color: Color(0xffF79E89),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Email",
                  style: TextStyle(
                    color: Color(0x27272780),
                    fontSize: 16,
                  ),
                ),
                Text(
                  widget.email!,
                  style: TextStyle(
                      color: Color(0xffF79E89),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Password",
                  style: TextStyle(
                    color: Color(0x27272780),
                    fontSize: 16,
                  ),
                ),
                Text(
                  widget.password!,
                  style: TextStyle(
                      color: Color(0xffF79E89),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  // clearUserData();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signUpScreen()));
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 45),
                    backgroundColor: Color(0xffF79E89),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
                child: Text(
                  "LOG OUT",
                  style: TextStyle(color: Color(0xffffffff)),
                ))
          ],
        ),
      ),
    );
  }
}
