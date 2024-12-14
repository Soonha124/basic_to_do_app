import 'package:basic_to_do_app/View/AddToDo.dart';
import 'package:basic_to_do_app/View/Detail_ToDo.dart';
import 'package:basic_to_do_app/View/Detailed_toDo3.dart';
import 'package:basic_to_do_app/View/Detailed_to_do_2.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "TO DO LIST",
        ),
        leadingWidth: 0,
        titleTextStyle: TextStyle(
            color: Color(0xffF79E89),
            fontSize: 24,
            fontWeight: FontWeight.w900),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.settings_outlined,
              size: 26,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("data"))
                );

                SnackBarAction(label: "label",
                    onPressed: (){});
                SnackBar(content: Text("dataa"
                    ""
                    ""),);

              },
                  icon: Icon(Icons.access_time)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Union.png",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "LIST OF TODO",
                    style: TextStyle(
                        color: Color(0xffF76C6A),
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Icon(
                    Icons.filter_alt_outlined,
                    color: Color(0xffF76C6A),
                    size: 36,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>
                            DetailTodo()));

                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF76C6A),
                            borderRadius: BorderRadius.circular(16)),
                        padding: EdgeInsets.all(10.0),
                        height: 135,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Design Logo",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xffffffff)),
                                ),
                                Icon(
                                  Icons.access_time,
                                  color: Color(0xffffffff),
                                )
                              ],
                            ),
                            Text(
                              "Make logo for the mini project",
                              style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Created at 1 Sept 2021",
                              style: TextStyle(fontSize: 14, color: Color(0xffffffff)),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailedToDo2()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF79E89),
                            borderRadius: BorderRadius.circular(16)),
                        padding: EdgeInsets.all(10.0),
                        height: 135,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Make UI Design",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffffffff)),
                            ),
                            Text(
                              """Make Ui design for the mini project\npost figma link to the trello using  ...""",
                              style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Created at 1 Sept 2021",
                              style: TextStyle(fontSize: 14, color: Color(0xffffffff)),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailedTodo3()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF79E89),
                            borderRadius: BorderRadius.circular(16)),
                        padding: EdgeInsets.all(10.0),
                        height: 135,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Learn React Native",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xffffffff)),
                            ),
                            Text(
                              "Make sure to learn before deadline!",
                              style: TextStyle(fontSize: 16, color: Color(0xffffffff)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Created at 2 Sept 2021",
                              style: TextStyle(fontSize: 14, color: Color(0xffffffff)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

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
                                  "Title",
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
                                hintText: "Description",
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
                                  "Deadline (Optional)",
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
                              child: Text("ADD TODO")),


                        ],
                      ),
                    ),
                  ),
                );;
          }
          );
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Color(0xffF76C6A),
        foregroundColor: Color(0xffffffff),
        child:
            Icon(Icons.add,size: 36,)

      ),


    );
  }
}
