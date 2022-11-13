import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tetest/widgets/hover_text.dart';

class HomaPgae extends StatefulWidget {
  const HomaPgae({Key? key}) : super(key: key);

  @override
  State<HomaPgae> createState() => _HomaPgaeState();
}

class _HomaPgaeState extends State<HomaPgae> {
  String firstDropDownItem = 'English';
  final List<String> languageItems = <String>[
    'English',
    'Persian',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors,
      appBar: AppBar(
        elevation: 2,
        leading: const Icon(
          Icons.chevron_left,
          size: 36,
          color: Colors.black,
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
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0Xff187EB3),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: DropdownButtonHideUnderline(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: DropdownButton(
                              dropdownColor: const Color(0Xff187EB3),
                              isDense: true,
                              style: const TextStyle(color: Colors.white),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                              value: firstDropDownItem,
                              items: languageItems
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newVal) {
                                setState(() {
                                  firstDropDownItem = newVal!;
                                });
                              },
                            ),
                          ),
                        )),
                  ]),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color(0XFF5DBF23),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [Text("Home >Product >Oreders")],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit,Lorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elitLorem ipsum dolor sit amet, consectetur adipiscing elit ',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ClipOval(
                              child: Image.asset('assets/svg/avatar/av1.jpg'))),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ClipOval(
                              child: Image.asset('assets/svg/avatar/av2.png'))),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Techers:',
                      style: TextStyle(fontSize: 24),
                    ),
                    Row(
                      children: const [
                        Text('First Teacher'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Second Teacher')
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 180,
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.monetization_on_outlined,
                                      color: Color(0xff7E7979),
                                      size: 27,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '90.000',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 50,
                                    ),
                                    Text(
                                      '110.000',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.access_alarm,
                                      size: 26,
                                      color: Color(0xff5DBF23),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '2 days left !',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff5DBF23)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0Xff187EB3)),
                            child: const Center(
                              child: Text(
                                '22% off',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 1.2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CardTitle(
                        icon: Icons.access_time,
                        info: '12 Hours',
                        title: 'Duration',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CardTitle(
                        icon: Icons.show_chart,
                        info: 'Bigginer',
                        title: 'Level',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CardTitle(
                        icon: Icons.people_outline,
                        info: '630 Students',
                        title: 'Registers',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CardTitle(
                        icon: Icons.language,
                        info: 'English',
                        title: 'Languages',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const CardTitle(
                        icon: Icons.speaker_notes,
                        info: '12 Hours',
                        title: 'Subtitles',
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 60),
                            backgroundColor: const Color(0Xff187EB3),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Add to cart',
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 70),
                              backgroundColor: const Color(0XffAED2E3)),
                          onPressed: () {},
                          child: const Text('Buy now')),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 30),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          width: 2, color: Color(0Xff187EB3)))),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_border,
                                color: Color(0xff3F3D56),
                              ),
                              label: const Text(
                                'Save',
                                style: TextStyle(
                                  color: Color(0xff3F3D56),
                                ),
                              )),
                          TextButton.icon(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 35),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          width: 2, color: Color(0Xff187EB3)))),
                              onPressed: () {},
                              icon: const Icon(
                                Icons.thumb_up_alt_outlined,
                                color: Color(0xff3F3D56),
                              ),
                              label: const Text(
                                'Like',
                                style: TextStyle(
                                  color: Color(0xff3F3D56),
                                ),
                              )),
                        ],
                      ),
                      const Divider(
                        thickness: 1.2,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'This lesson cotains:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      const CardTileContains(
                        svgAdd: 'assets/svg/dollar.svg',
                        title: 'Full time',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CardTileContains(
                        svgAdd: 'assets/svg/acctime.svg',
                        title: 'Mony back 100% Grantiyed',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CardTileContains(
                        svgAdd: 'assets/svg/freetrain.svg',
                        title: 'Free training and resources',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CardTileContains(
                        svgAdd: 'assets/svg/cup.svg',
                        title: 'Reward',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CardTileContains(
                        svgAdd: 'assets/svg/computer.svg',
                        title: 'Accessable with phone and tablet',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CardTileContains(
                        svgAdd: 'assets/svg/subtitle.svg',
                        title: 'Subtitel',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CardTileContains(
                        svgAdd: 'assets/svg/online.svg',
                        title: '100% Online',
                      ),
                      const Divider(
                        thickness: 1.2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Share this course with:',
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const ShareButton(
                            svgAdd: 'assets/svg/email.svg',
                          ),
                          const ShareButton(
                            svgAdd: 'assets/svg/whapp.svg',
                          ),
                          const ShareButton(
                            svgAdd: 'assets/svg/telegram.svg',
                          ),
                          const ShareButton(
                            svgAdd: 'assets/svg/instagram.svg',
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffC3DEEA),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 7)),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/copy.svg',
                                    color: const Color(0xff3F3D56),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    'Copy link',
                                    style: TextStyle(color: Color(0xff3F3D56)),
                                  )
                                ],
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const HoverText()
          ]),
        ),
      ),
    );
  }
}

//////////////custome widget///////////////
///
///
class ShareButton extends StatelessWidget {
  const ShareButton({
    required this.svgAdd,
    super.key,
  });
  final String svgAdd;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: ElevatedButton(
        onPressed: () {},
        style:
            ElevatedButton.styleFrom(backgroundColor: const Color(0xffC3DEEA)),
        child: SvgPicture.asset(
          svgAdd,
          fit: BoxFit.scaleDown,
          color: const Color(0xff3F3D56),
        ),
      ),
    );
  }
}

class CardTileContains extends StatelessWidget {
  const CardTileContains({
    required this.svgAdd,
    required this.title,
    super.key,
  });
  final String title;

  final String svgAdd;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          svgAdd,
          width: 30,
          height: 30,
        ),
        const SizedBox(
          width: 15,
        ),
        Text(
          title,
        ),
      ],
    );
  }
}

class CardTitle extends StatelessWidget {
  const CardTitle({
    required this.icon,
    required this.title,
    required this.info,
    super.key,
  });
  final String title;
  final IconData icon;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        size: 26,
        color: const Color(0xff3F3D56),
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        title,
        style: const TextStyle(color: Color(0xff3F3D56)),
      ),
      const Spacer(),
      Text(
        info,
        style: const TextStyle(color: Color(0xff3F3D56)),
      ),
    ]);
  }
}
