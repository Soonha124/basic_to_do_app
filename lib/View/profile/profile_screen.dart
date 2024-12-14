import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO LIST"),
        actions: [
          IconButton(onPressed: (){
            SnackBar(content: Text("data"),);
          },
              icon: Icon(Icons.add)),

          Icon(Icons.settings_outlined),
          // SvgPicture.asset("assetName")
        ],
      ),
    );
  }
}
