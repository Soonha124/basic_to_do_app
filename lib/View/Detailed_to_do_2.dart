import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/HomeScreen.dart';

class DetailedToDo2 extends StatefulWidget {
  const DetailedToDo2({super.key});

  @override
  State<DetailedToDo2> createState() => _DetailedToDo2State();
}

class _DetailedToDo2State extends State<DetailedToDo2> {
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
                IconButton(
                    onPressed: (){
                      showModalBottomSheet(
                          enableDrag: true,
                          showDragHandle: true,
                          backgroundColor: Color(0xffF79E89),
                          context: context,
                          builder: (BuildContext context){
                            return SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Container(
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            label: Text(
                                              "MAKE UI DESIGN",
                                              style: TextStyle(color: Color(0xffffffff)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Color(0xffffffff)),
                                                borderRadius: BorderRadius.circular(12))),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextField(
                                        maxLines: 11,
                                        decoration: InputDecoration(
                                            hintStyle: TextStyle(color: Color(0xffffffff)),
                                            hintText: "Make UI Design for the mini project",
                                            enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Color(0xffffffff)),
                                                borderRadius: BorderRadius.circular(12))),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.calendar_today_outlined,
                                              color: Color(0xffffffff),
                                            ),
                                            label: Text(
                                              "03 Septermber 2021",
                                              style: TextStyle(color: Color(0xffffffff)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Color(0xffffffff)),
                                                borderRadius: BorderRadius.circular(12))),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.image_outlined,
                                              color: Color(0xffffffff),
                                            ),
                                            label: Text(
                                              "Add Image (Optional)",
                                              style: TextStyle(color: Color(0xffffffff)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                BorderSide(color: Color(0xffffffff)),
                                                borderRadius: BorderRadius.circular(12))),
                                      ),
                                      SizedBox(height: 20,),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.all(Radius.circular(12))),
                                              minimumSize: Size(double.infinity, 44),
                                              backgroundColor: Color(0xffffffff),
                                              foregroundColor: Color(0xffF79E89)),
                                          onPressed: () {

                                          },
                                          child: Text("EDIT TODO")),


                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    icon:  Icon(Icons.edit_rounded)),
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
                "MAKE UI DESIGN",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000)),
              ),
            ),
            Expanded(
              flex: 12,
              child: Text(
              """Make Ui design for the mini project post figma link to the trello using view only link.

Design List :
      - login
      - register
      - home
      - detail
      - add
      - edit
      - delete
      - profile """,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Created at 1 Sept 2021",
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
