import 'package:basic_to_do_app/auth/sign_up_Screen.dart';
import 'package:basic_to_do_app/home/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class TaskDetails extends StatefulWidget {
  final String TaskTitle;
  final String TaskDescription;
  final Widget? TaskImage;
  final String TaskDate;
  final VoidCallback callBack;

  const TaskDetails({super.key,
    required this.TaskTitle,
    required this.TaskDescription,
    this.TaskImage,
    required this.TaskDate,
    required this.callBack,
   });

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
              Homescreen()
          ));
        },
            icon: Icon(Icons.arrow_back)),
        actions: [
          IconButton(icon:Icon(Icons.timelapse), onPressed: (){
          }),
        IconButton(icon:Icon(Icons.edit_rounded), onPressed: (){}),
          IconButton(onPressed: (){
            if (kDebugMode) {
              // print("index ${widget.TaskNumber}");
            }

            showDialog(
                context: context,
                builder: (context) {
                  return taskRemoveDialogue(
                    callBack:  widget.callBack,
                  );
                });
            // print("title: ${widget.TaskNumber}");
          },
              icon: Icon(Icons.delete_outline_outlined))
        ],
      ),
      body:  Center(
        child: Padding(padding: EdgeInsets.all(20),
          child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(widget.TaskTitle,
                        // textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 31,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child:SingleChildScrollView(
                        child:
                        Column(
                          children: [
                            Text(widget.TaskDescription),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 200,
                              width: double.infinity,
                              child: widget.TaskImage != null ? (widget.TaskImage is Image ? Image(
                                image: (widget.TaskImage as Image).image,
                              fit: BoxFit.cover,) : widget.TaskImage!) : Text(""),),
                          ],
                        ),
                      )
        ),
                  SizedBox(height: 20,),

                ],
              )

      ),),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.TaskDate,
              textAlign: TextAlign.start,
            )
          ],
        ),
      ),
    );
  }
}
