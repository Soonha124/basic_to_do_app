import 'dart:io';


class tasks {
  final String title;
  final String taskDetail;
  final String taskDate;
  final File? image;

  tasks({required this.title, required this.taskDetail, required this.taskDate, this.image});
}