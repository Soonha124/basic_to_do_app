import 'package:basic_to_do_app/View/EditToDo.dart';
import 'package:basic_to_do_app/home/HomeScreen.dart';
import 'package:flutter/material.dart';

class DetailTodo extends StatefulWidget {
  const DetailTodo({super.key});

  @override
  State<DetailTodo> createState() => _DetailTodoState();
}

class _DetailTodoState extends State<DetailTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (contex) => Homescreen()));
            },
            icon: Icon(Icons.arrow_back_ios_sharp)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Icon(Icons.access_time),
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          enableDrag: true,
                          showDragHandle: true,
                          backgroundColor: Color(0xffF79E89),
                          context: context,
                          builder: (BuildContext context) {
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
                                              "Design Logo",
                                              style: TextStyle(
                                                  color: Color(0xffffffff)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffffffff)),
                                                borderRadius:
                                                    BorderRadius.circular(12))),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      TextField(
                                        maxLines: 11,
                                        decoration: InputDecoration(
                                            hintStyle: TextStyle(
                                                color: Color(0xffffffff)),
                                            hintText:
                                                "Make logo for the mini project",
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffffffff)),
                                                borderRadius:
                                                    BorderRadius.circular(12))),
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
                                              style: TextStyle(
                                                  color: Color(0xffffffff)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffffffff)),
                                                borderRadius:
                                                    BorderRadius.circular(12))),
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
                                              style: TextStyle(
                                                  color: Color(0xffffffff)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xffffffff)),
                                                borderRadius:
                                                    BorderRadius.circular(12))),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(12))),
                                              minimumSize:
                                                  Size(double.infinity, 44),
                                              backgroundColor:
                                                  Color(0xffffffff),
                                              foregroundColor:
                                                  Color(0xffF79E89)),
                                          onPressed: () {},
                                          child: Text("EDIT TODO")),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    icon: Icon(Icons.edit_rounded)),
                IconButton(
                    onPressed: () {
                      showDialog(
                        barrierLabel: "Delete",
                          context: context,
                          builder: (BuildContext context){
                        return
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(12))),
                                          minimumSize: Size(double.infinity, 44),
                                          backgroundColor: Color(0xffffffff),
                                          foregroundColor: Color(0xffF76C6A)),
                                      onPressed: (){},
                                      child: Text("Delete ToDo",)
                                  ),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(12))),
                                          minimumSize: Size(double.infinity, 44),
                                          backgroundColor: Color(0xffffffff),
                                          foregroundColor: Color(0xff00FF19)),
                                      onPressed: (){},
                                      child: Text("Cancel"))
                                ],
                              );
                          });
                    },
                    icon: Icon(Icons.delete_outline_outlined))
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
                "DESIGN LOGO",
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
                "Make logo for the mini project",
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
