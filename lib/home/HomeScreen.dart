import 'dart:io';

import 'package:basic_to_do_app/View/profile/profile_screen.dart';
import 'package:basic_to_do_app/View/taskDetail.dart';
import 'package:basic_to_do_app/auth/logInScreen.dart';
import 'package:basic_to_do_app/auth/sign_up_Screen.dart';
import 'package:basic_to_do_app/model/task.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Homescreen extends StatefulWidget {

  Homescreen(
      {super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

TextEditingController titleController = TextEditingController();
TextEditingController descriptionController = TextEditingController();
TextEditingController deadlineController = TextEditingController();
TextEditingController imgController = TextEditingController();

List<tasks> task = [
  // tasks(
  //     title: "Design Logo",
  //     taskDetail: "Make logo for the mini project",
  //     taskDate: deadlineController.text ?? "No Date Selected")
];



Future<void> datePicker(BuildContext context) async {
  DateTime? pickedDate = await showDatePicker(
      helpText: "Select a Date",
      context: context,
      firstDate: DateTime(1900, DateTime.monthsPerYear, DateTime.daysPerWeek),
      lastDate: DateTime.now());
  if (pickedDate != null) {
    deadlineController.text =
        "${pickedDate.day}/ ${pickedDate.month} /${pickedDate.year}";
  }
}
bool isImagePicked = false;

File? file;

class _HomescreenState extends State<Homescreen> {

  removeTask(int index){
    setState(() {
      task.removeAt(index);
    });
  }
  Future picImg() async {
    ImagePicker imagePicker = ImagePicker();

    XFile? image = await imagePicker.pickImage(source: ImageSource.gallery);
setState(() {
 file  = File(image!.path);
 if(file != null){
   isImagePicked = true;
   if(isImagePicked){
     imgController.text = "Image is Picked";
   }
 }
});

  }


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
            child: IconButton(
              icon: Icon(Icons.settings_outlined,
              size: 26,
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen(
                  email: emailController.text, name: nameController.text, password: passwordController.text,
                )));
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Union.png",
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "LIST OF TODO",
                  style: TextStyle(
                      color: Color(0xffF76C6A),
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "data cleared", toastLength: Toast.LENGTH_LONG);
                    },
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      color: Color(0xffF76C6A),
                      size: 36,
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext, index) {
                  return GestureDetector(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            TaskDetails(
                                TaskTitle: task[index].title,
                                TaskDescription: task[index].taskDetail,
                              TaskImage: task[index].image != null ? Image.file(task[index].image!): Text(""),
                              TaskDate: task[index].taskDate,
                              callBack: ()=> removeTask(index),
                            ),
                        )
                        );
                    },

                    child: Container(
                      decoration: BoxDecoration(
                          color: index.isEven
                              ? const Color(0xffF76C6A)
                              : const Color(0xffff9a98),
                          borderRadius: BorderRadius.circular(16)),
                      padding: EdgeInsets.all(10.0),
                      // height: 135,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                task[index].title,
                                style: TextStyle(
                                    textBaseline: TextBaseline.alphabetic,
                                    overflow: TextOverflow.ellipsis,
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
                            maxLines: 2,
                            task[index].taskDetail,
                            style: TextStyle(
                                overflow: TextOverflow.clip,
                                fontSize: 16,
                                color: Color(0xffffffff)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${task[index].taskDate}",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xffffffff)),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 65,
                            width: double.infinity,
                            child: task[index].image ==  null ? Text("") : Image.file(
                              task[index].image!, fit: BoxFit.cover,)
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, _) {
                  return SizedBox(
                    height: 20,
                  );
                },
                itemCount: task.length,
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            sheet();
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Color(0xffF76C6A),
          foregroundColor: Color(0xffffffff),
          child: Icon(
            Icons.add,
            size: 36,
          )),
    );
  }

  Future<dynamic> sheet() {
    return showModalBottomSheet(
        sheetAnimationStyle: AnimationStyle(curve: Curves.easeInOutQuad),
        isDismissible: false,
        enableDrag: false,
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
                      controller: titleController,
                      style: TextStyle(color: Color(0xffffffff)),
                      decoration: InputDecoration(
                          label: Text(
                            "Title",
                            style: TextStyle(color: Color(0xffffffff)),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffffffff)),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    TextField(
                      controller: descriptionController,
                      style: TextStyle(color: Color(0xffffffff)),
                      maxLines: 11,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Color(0xffffffff)),
                          hintText: "Description",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffffffff)),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    TextField(
                      controller: deadlineController,
                      readOnly: true,
                      style: TextStyle(color: Color(0xffffffff)),
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(Icons.calendar_today_outlined,
                                color: Color(0xffffffff)),
                            onPressed: () {
                              datePicker(context);
                            },
                          ),
                          label: Text(
                            "Deadline (Optional)",
                            style: TextStyle(color: Color(0xffffffff)),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffffffff)),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: imgController,
                      readOnly: true,
                      style: TextStyle(color: Color(0xffffffff)),
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.image_outlined,
                              color: Color(0xffffffff),
                            ),
                            onPressed: () {
                              picImg();
                            },
                          ),
                          label: Text(
                            "Add Image (Optional)",
                            style: TextStyle(color: Color(0xffffffff)),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffffffff)),
                              borderRadius: BorderRadius.circular(12))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            minimumSize: Size(double.infinity, 44),
                            backgroundColor: Color(0xffffffff),
                            foregroundColor: Color(0xffF79E89)),
                        onPressed: () {
                          if(titleController.text.isNotEmpty || descriptionController.text.isNotEmpty){

                            task.add(tasks(title: titleController.text,
                                taskDetail: descriptionController.text,
                                taskDate: deadlineController.text,
                                image: file));


                            setState(() {
                              Navigator.pop(context);
                              titleController.clear();
                              descriptionController.clear();
                              deadlineController.clear();
                              imgController.clear();
                              isImagePicked = false;
                              file = null;
                            });
                          } else {
                            Fluttertoast.showToast(msg: "Fill details", toastLength: Toast.LENGTH_SHORT);
                          }

                        },
                        child: Text("ADD TODO")),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
