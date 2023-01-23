import 'package:flutter/material.dart';

class TeacherPart extends StatelessWidget {
  const TeacherPart({Key? key, required this.description, required this.name})
      : super(key: key);
  final String name;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white, width: 2)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _singelIcon1(Icons.favorite_border_outlined),
                  const SizedBox(
                    width: 10,
                  ),
                  _singelIcon1(Icons.share),
                ],
              ),
              _circularPic(),
              const SizedBox(
                height: 10,
              ),
              Text(
                name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(description),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                children: List.generate(
                    5,
                    (index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        )),
              )
            ]),
          ),
        )
      ],
    );
  }
}

Widget _singelIcon1(IconData icon) {
  return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Icon(icon));
}

Widget _circularPic() {
  return Container(
    width: 250,
    height: 250,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1000), color: Colors.amber),
  );
}
