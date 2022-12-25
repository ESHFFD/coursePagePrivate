import 'package:flutter/material.dart';
import 'package:tetest/presentation/color_management.dart';
import 'package:tetest/presentation/styles_manager.dart';
import 'package:tetest/presentation/values_manager.dart';

class LastCard extends StatelessWidget {
  const LastCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12)),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                print('Clicked');
              },
              child: Stack(children: [
                Container(
                  width: 125,
                  height: 185,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/svg/avatar/course5.jpg'),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(AppSize.s12)),
                ),
                Positioned(
                  top: 7,
                  left: 7,
                  child: Container(
                    width: 38,
                    height: 13,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(AppSize.s4)),
                    child: Center(
                      child: Text("Manage",
                          style: getRegularStyle(
                              color: Colors.black, fontSize: AppSize.s8)),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 4,
                  left: 5,
                  child: Container(
                    width: 43,
                    height: 22,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(AppSize.s16)),
                    child: Center(
                      child: Text("15 min",
                          style: getRegularStyle(
                              color: Colors.white, fontSize: AppSize.s12)),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: ColorTeacherPanel.boxColorGreen,
                        borderRadius: BorderRadius.circular(100)),
                    child: const Center(
                        child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 15,
                    )),
                  ),
                ),
              ]),
            ),
            SizedBox(height: size.height * 0.02),
            SizedBox(
              width: 130,
              child: Text(
                'Any mechanical keyboard enthusiasts',
                style: getBoldStyle(color: ColorTeacherPanel.darkGrey),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SizedBox(
              width: 100,
              child: Stack(
                children: [
                  Positioned(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                          width: 40,
                          child: ClipOval(
                              child: Image.asset(
                            'assets/svg/avatar/av1.jpg',
                          ))),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                          width: 40,
                          child: ClipOval(
                              child: Image.asset(
                            'assets/svg/avatar/av1.jpg',
                          ))),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                          width: 40,
                          child: ClipOval(
                              child: Image.asset(
                            'assets/svg/avatar/av1.jpg',
                          ))),
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Youtube Video',
                  style: getBoldStyle(
                      color: ColorTeacherPanel.darkGrey, fontSize: AppSize.s12),
                ))
          ],
        ),
      ),
    );
  }
}
