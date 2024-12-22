import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/HomeScreen.dart';

class taskRemoveDialogue extends StatefulWidget {
final VoidCallback callBack;

   taskRemoveDialogue({super.key, required this.callBack});

  @override
  State<taskRemoveDialogue> createState() => _taskRemoveDialogueState();
}

class _taskRemoveDialogueState extends State<taskRemoveDialogue> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0x38ffffff),
      elevation: 5,
      // title: Text("Remove Task"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
    children: [
      TextButton(
          onPressed: ()  {
        setState(()  {
          widget.callBack();

        });

        Navigator.pop(context);
        Navigator.pop(context);

      },
          style: TextButton.styleFrom(
            backgroundColor: Color(0xffffffff),
            minimumSize: Size(double.infinity, 44),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))
            ),
          ),
          child: const Text("Delete ToDo",
          style: TextStyle(
            color: Color(0xffff0000)
          ),)),
      SizedBox(height: 20,),
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            minimumSize: Size(double.infinity, 44),
              backgroundColor: Color(0xffffffff)
          ),
          child: const Text("Cancel",
            style: TextStyle(
                color: Color(0xff00ff08)
            ),)),

    ],));


  }
}


