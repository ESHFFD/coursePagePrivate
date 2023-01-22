import 'package:flutter/material.dart';
import 'package:tetest/web_home_view/widgets/firstpart.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({Key? key}) : super(key: key);
  static const List name = [
    'James Gouse',
    'Jessica Lamber',
    'Anna White',
    'Alex Stone'
  ];
  static const List des = [
    'Master Of Education Dgree',
    'Master Of Education Dgree',
    'Master Of Education Dgree',
    'Master Of Education Dgree',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: const Text('Web Part'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _title(),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 500,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: double.infinity,
                            mainAxisSpacing: 30,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 40),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (_, i) {
                      return
                          // width: MediaQuery.of(context).size.width * 0.98 / 4,
                          TeacherPart(description: des[i], name: name[i]);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _title() {
  return Text('This is a Text,This is a Text,This is a Text ');
}
