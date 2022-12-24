import 'package:flutter/material.dart';
import 'package:tetest/presentation/color_management.dart';
import 'package:tetest/presentation/values_manager.dart';
import 'package:tetest/studentPanel/Widgets/user_comment.dart';

class TestYourKnowledge extends StatelessWidget {
  const TestYourKnowledge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
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
          child: Column(children: [
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.arrow_circle_left_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text('Number'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 2,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(width: 0), color: Colors.black),
                      ),
                    ),
                    Text('The Hidden Mystery Behind DESIGN')
                  ],
                ),
                const Text('Course : Name course'),
                Row(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.center,
                      width: 80,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Color(0xff177FB0),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Design',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    child: Text(
                      "Skip Lesson",
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  )),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffE6E6E6),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40))),
                    child: Text(
                      'Next Lesson',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {},
                  ))
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: 340,
              height: 319,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 27,
                          height: 27,
                          decoration: BoxDecoration(
                              color: Color(0xff5DBF23),
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 2, color: Color(0xff3F3D56))),
                          child: const Text(
                            'i',
                            style: TextStyle(
                                color: Color(0xff3F3D56),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text("About This Lesson"),
                        Spacer(),
                        InkWell(
                          child: Icon(Icons.more_horiz),
                          onTap: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                        'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xff7E7979),
                          letterSpacing: 1,
                        )),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your lesson progress',
                            style: TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('Resources'),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('Test your knowledge'),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 9,
                        height: 9,
                        decoration: BoxDecoration(
                            color: Color(0xff5DBF23),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 317,
                      height: 256,
                      decoration: BoxDecoration(
                          color: Color(0xffEDEDEE),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to Bootcamp',
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Icon(Icons.bookmark_border),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text("1. "),
                                Text('Welcom')
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: InkWell(
                                      child: Container(
                                        width: 60,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Color(0xffC3DEEA)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Icon(Icons.access_alarm),
                                            Text('Test')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: InkWell(
                                      child: Container(
                                        width: 60,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                            color: Color(0xffC6E9B2)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: const [
                                            Icon(Icons.paste),
                                            Text('data')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.bookmark_border),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("2. "),
                                Text('join the conversation')
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.bookmark_border),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("3. "),
                                Text('summary')
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Icon(Icons.bookmark_border),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("4."),
                                Text('april 2022 (recording)')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.chat,
                          size: 36,
                          color: Color(0xff5DBF23),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('Discussion And Reflection')
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 500,
                      child: ListView(children: const [
                        UserComment(),
                        UserComment(),
                        UserComment(),
                        UserComment(),
                      ]),
                    )
                  ]),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
