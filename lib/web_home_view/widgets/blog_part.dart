import 'package:flutter/material.dart';

class BlogPart extends StatelessWidget {
  const BlogPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 380,
        width: 290,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _image(),
          Container(
            width: 100,
            height: 30,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: const Align(
                alignment: Alignment.center, child: Text('Business')),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                        child: Text(
                      "Fashion Photoghrapy from professional",
                      style: TextStyle(fontSize: 18),
                    ))
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                _starRating(),
                const SizedBox(
                  height: 5,
                ),
                _timeButton()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

Widget _image() {
  return Stack(children: [
    Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Image.asset(
        'assets/svg/avatar/course5.jpg',
        fit: BoxFit.contain,
      ),
    ),
    Positioned(
      right: 25,
      bottom: 0,
      child: CircleAvatar(
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
  ]);
}

Widget _starRating() {
  return Row(
    children: const [
      Icon(
        Icons.star,
        color: Colors.amber,
      ),
      SizedBox(
        width: 3,
      ),
      Text('4.8  (3.8k+ Reviews)')
    ],
  );
}

Widget _timeButton() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: const [
          Icon(Icons.access_time),
          Text(
            '8H 12m',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text('View'),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 30)),
      )
    ],
  );
}
