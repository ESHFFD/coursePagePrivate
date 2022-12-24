import 'package:flutter/material.dart';

class UserComment extends StatelessWidget {
  const UserComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  child: Image.asset('assets/svg/avatar/teacher.png'),
                ),
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffE6E6E6),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text('Michal Payne'), Text('24nov')],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SingleChildScrollView(
                        child: Text(
                          'There  are many variations of are many variations of are many variations of are many variations of are many variations of',
                          style: TextStyle(color: Color(0xff7E7979)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                child: Row(
                  children: [
                    const Icon(
                      Icons.reply,
                      size: 20,
                      color: Color(0xff7E7979),
                    ),
                    const Text(
                      ' Reply',
                      style: TextStyle(fontSize: 12),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height: 24,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xff7E7979))),
                    ),
                    const Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 20,
                      color: Color(0xff7E7979),
                    ),
                    const Text(
                      ' Like',
                      style: TextStyle(fontSize: 12),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height: 24,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: Color(0xff7E7979))),
                    ),
                    const Icon(
                      Icons.remove_red_eye,
                      size: 20,
                      color: Color(0xff7E7979),
                    ),
                    const Text(
                      ' Show 10 replies',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
