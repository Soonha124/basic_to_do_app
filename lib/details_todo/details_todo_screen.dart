import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailedToToScreen extends StatefulWidget {
  const DetailedToToScreen({super.key});

  @override
  State<DetailedToToScreen> createState() => _DetailedToToScreenState();
}

class _DetailedToToScreenState extends State<DetailedToToScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        actions: [

        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
