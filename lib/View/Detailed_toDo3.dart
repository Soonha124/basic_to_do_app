import 'package:flutter/material.dart';

import '../home/HomeScreen.dart';

class DetailedTodo3 extends StatefulWidget {
  const DetailedTodo3({super.key});

  @override
  State<DetailedTodo3> createState() => _DetailedTodo3State();
}

class _DetailedTodo3State extends State<DetailedTodo3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (contex)=>Homescreen()));
            },
            icon: Icon(Icons.arrow_back_ios_sharp)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Icon(Icons.access_time),
               Icon(Icons.edit_rounded),
                Icon(Icons.delete_outline_outlined)
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                "LEARN REACT NATIVE",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000)),
              ),
            ),
            Expanded(
              flex: 12,
              child: Column(
                children: [
                  Text(
                    "Make sure to learn before deadline!",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
                  ),
                  Image.asset("assets/images/reactNative.png")
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Created at 2 Sept 2021",
                )
              ],
            )

          ],
        ),
      ),
    );;
  }
}
