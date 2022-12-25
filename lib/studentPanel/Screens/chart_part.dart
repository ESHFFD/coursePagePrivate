import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tetest/models/teacher_panel_corse_progressiv.dart';
import 'package:tetest/presentation/color_management.dart';
import 'package:tetest/presentation/styles_manager.dart';
import 'package:tetest/presentation/values_manager.dart';
import 'package:tetest/studentPanel/Widgets/first_card.dart';
import 'package:tetest/teacherPanel/screens/dashboard.dart';
import 'package:tetest/teacherPanel/widgets/course_card.dart';

class ChartPart extends StatefulWidget {
  const ChartPart({Key? key}) : super(key: key);

  @override
  State<ChartPart> createState() => _ChartPartState();
}

class _ChartPartState extends State<ChartPart> {
  bool isClicked = false;
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
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              FirstCard(
                course: course,
                size: size,
                progressColor: progressColor,
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: 130,
                              height: 185,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/svg/studentPanel/bgst.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                          // const SizedBox(
                          //   width: ,
                          // ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/svg/studentPanel/Group 140.svg'),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text('Continue Your\nLast Lesson')
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Art in the Future Design',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(
                            backgroundColor: Colors.grey[200],
                            color: Color(0xff177FB0),
                            value: 0.4,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Progress',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                '14/20',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                backgroundColor: Color(0xff5DBF23),
                                padding: EdgeInsets.all(15)),
                            onPressed: () {},
                            child: Text('Continue'),
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Card(
                elevation: AppSize.s4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppSize.s18),
                  child: Column(
                    children: [
                      Text(
                        "Your Following",
                        style: getBoldStyle(
                            color: ColorTeacherPanel.darkGrey,
                            fontSize: AppSize.s18),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: AppSize.s12),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSize.s16)),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppSize.s40, horizontal: AppSize.s18),
                            child: Column(children: [
                              DetailUserCourse(
                                  colore: isClicked
                                      ? ColorTeacherPanel.darkGrey
                                      : ColorTeacherPanel.boxColorGreen,
                                  size: size),
                              SizedBox(
                                height: size.height * 0.017,
                              ),
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 110,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        child: Image.asset(
                                            'assets/svg/teacherPanel/background.jpg'),
                                      ),
                                      Positioned(
                                        top: 14,
                                        left: 5,
                                        child: Container(
                                          width: 38,
                                          height: 13,
                                          decoration: BoxDecoration(
                                              color: const Color(0xD93F3D56),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      AppSize.s4)),
                                          child: Center(
                                            child: Text("Manage",
                                                style: getRegularStyle(
                                                    color: Colors.white,
                                                    fontSize: AppSize.s8)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 16,
                                        left: 8,
                                        child: Container(
                                          width: 40,
                                          height: 15,
                                          decoration: BoxDecoration(
                                              color: Colors.white38,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      AppSize.s4)),
                                          child: Center(
                                            child: Text("15 min",
                                                style: getRegularStyle(
                                                    color: Colors.white,
                                                    fontSize: AppSize.s12)),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 14,
                                        right: 4,
                                        child: Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: ColorTeacherPanel
                                                  .boxColorGreen,
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: const Center(
                                              child: Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: size.width * 0.02,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                          width: 150,
                                          child: Text(
                                            "How To Turn Manage Into Success",
                                            style: getBoldStyle(
                                                color:
                                                    ColorTeacherPanel.darkGrey),
                                          )),
                                      SizedBox(
                                        height: size.height * 0.015,
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/svg/acctime.svg',
                                            color: const Color(0xff7E7979),
                                            width: 13,
                                            height: 10,
                                          ),
                                          SizedBox(
                                            width: size.width * 0.01,
                                          ),
                                          Text(
                                            '8h 12m',
                                            style: getRegularStyle(
                                                color:
                                                    ColorTeacherPanel.darkGrey,
                                                fontSize: AppSize.s8),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemBuilder: (_, i) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: AppSize.s4, horizontal: AppSize.s20),
                            child: DetailUserCourse(
                                colore: isClicked
                                    ? ColorTeacherPanel.boxColorGreen
                                    : ColorTeacherPanel.darkGrey,
                                size: size),
                          ),
                          itemCount: 4,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 390,
                    child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          LastCard(size: size),
                          LastCard(size: size),
                          LastCard(size: size),
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
