import 'package:flutter/material.dart';
import 'package:tetest/models/teacher_panel_corse_progressiv.dart';

class ChartPart extends StatefulWidget {
  const ChartPart({Key? key}) : super(key: key);

  @override
  State<ChartPart> createState() => _ChartPartState();
}

class _ChartPartState extends State<ChartPart> {
  final List<Course> course = [
    Course(
      coursePercent: 30,
      courseTitle: 'Chemistry',
      duration: 2,
    ),
    Course(
      coursePercent: 25,
      courseTitle: 'Chemistry',
      duration: 2,
    ),
    Course(
      coursePercent: 50,
      courseTitle: 'Chemistry',
      duration: 2,
    ),
    Course(
      coursePercent: 80,
      courseTitle: 'Chemistry',
      duration: 2,
    ),
    Course(
      coursePercent: 10,
      courseTitle: 'Chemistry',
      duration: 2,
    ),
  ];
  final List progressColor = const [
    Color(0xff177FB0),
    Color(0xffC94B04),
    Color(0xffFBBC05),
    Color(0xff5DBF23),
    Color(0xff177FB0),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10)),
      ),
    );
  }
}
