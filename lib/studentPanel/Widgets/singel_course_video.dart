import 'package:flutter/material.dart';

class SingelCourseVideo extends StatelessWidget {
  const SingelCourseVideo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 40),
          width: 235,
          height: 285,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xffD9D9D9))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/svg/studentPanel/bgst.jpg',
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Course sale bootcamp\nApril 2021',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Divider(
                thickness: 1.5,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: Image.asset(
                        'assets/svg/avatar/teacher.png',
                      ),
                    ),
                    Text(
                      " Marina Payne",
                      style: TextStyle(fontSize: 11),
                    ),
                    Spacer(),
                    Text(
                      'Learners',
                      style: TextStyle(fontSize: 11, color: Color(0xff7E7979)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
