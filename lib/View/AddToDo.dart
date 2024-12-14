import 'package:flutter/material.dart';

class Addtodo extends StatefulWidget {
  const Addtodo({super.key});

  @override
  State<Addtodo> createState() => _AddtodoState();
}

class _AddtodoState extends State<Addtodo> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        bottomSheet: BottomSheet(
            backgroundColor: Color(0xffF79E89),
            showDragHandle: true,
            dragHandleColor: Color(0xffffffff),
            dragHandleSize: Size(76, 6),
            onClosing: () {},
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
              );
            })
    );
  }
}
