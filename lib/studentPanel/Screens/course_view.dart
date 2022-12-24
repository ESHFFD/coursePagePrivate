import 'package:flutter/material.dart';
import 'package:tetest/presentation/color_management.dart';
import 'package:tetest/presentation/values_manager.dart';
import 'package:tetest/studentPanel/Widgets/singel_course_video.dart';

class StudentCourseView extends StatefulWidget {
  const StudentCourseView({Key? key}) : super(key: key);

  @override
  State<StudentCourseView> createState() => _StudentCourseViewState();
}

class _StudentCourseViewState extends State<StudentCourseView> {
  static List<String> categoryItemDropDown = <String>[
    'All category',
    'Backend',
    'Frontend'
  ];
  static List<String> authorItemDropDown = <String>[
    'All Author',
    'Maxi miliian',
    'Harry jons'
  ];
  String authorDropDownValue = categoryItemDropDown.first;
  String categoryDropDownValue = authorItemDropDown.first;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 2,
        leading: Builder(
          builder: (context) => Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: SizedBox(
                      child: ClipOval(
                          child: Image.asset(
                    'assets/svg/avatar/av1.jpg',
                    width: 200,
                    height: 200,
                  ))),
                ),
              ),
              Positioned(
                  right: 10,
                  bottom: 8,
                  child: Container(
                      width: 10,
                      height: 10,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: ColorTeacherPanel.statusPerson,
                        border: Border.all(
                            width: AppSize.s1_5, color: Colors.white),
                        borderRadius: BorderRadius.circular(20),
                      ))),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        title: SizedBox(
          width: 58,
          height: 53,
          child: Image.asset(
            'assets/svg/logo.png',
            fit: BoxFit.cover,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.02, horizontal: size.width * 0.04),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Courses / Courses Management',
                style: TextStyle(fontSize: 18),
              ),
              InkWell(
                radius: 12,
                customBorder: const CircleBorder(),
                onTap: () {
                  print('tapped');
                },
                child: Container(
                  width: 55,
                  height: 36,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xffD9D9D9), width: 1.5)),
                  child: const Icon(Icons.search),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          border:
                              Border.all(width: 1, color: Color(0xffD9D9D9)),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton(
                        underline: Container(),
                        elevation: 0,
                        value: authorDropDownValue,
                        items: categoryItemDropDown.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            authorDropDownValue = value!;
                          });
                        },
                      ),
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                          color: Color(0xffF4F4F4),
                          border:
                              Border.all(width: 1, color: Color(0xffD9D9D9)),
                          borderRadius: BorderRadius.circular(10)),
                      child: DropdownButton(
                        underline: Container(),
                        elevation: 0,
                        value: categoryDropDownValue,
                        items: authorItemDropDown.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            categoryDropDownValue = value!;
                          });
                        },
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 530,
                  child: ListView(
                    children: [
                      SingelCourseVideo(),
                      SingelCourseVideo(),
                      SingelCourseVideo(),
                      SingelCourseVideo(),
                      SingelCourseVideo(),
                    ],
                  ),
                )
              ]),
            ),
          )
        ]),
      )),
    );
  }
}
