import 'package:flutter/material.dart';

class TicketPart extends StatefulWidget {
  TicketPart({Key? key}) : super(key: key);

  @override
  State<TicketPart> createState() => _TicketPartState();
}

class _TicketPartState extends State<TicketPart> {
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
      body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.03, horizontal: size.width * 0.02)),
    );
  }
}
