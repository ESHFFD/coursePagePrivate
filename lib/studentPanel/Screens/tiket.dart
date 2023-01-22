import 'package:flutter/material.dart';
import 'package:tetest/presentation/color_management.dart';
import 'package:tetest/presentation/values_manager.dart';

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
      backgroundColor: Color(0xffF9FDF8),
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
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.03, horizontal: size.width * 0.03),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Ticket',
                    style: TextStyle(fontSize: 18, color: Color(0xff7E7979)),
                  ),
                  Text(
                    ' / Support Tickets...',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  width: 362,
                  height: 932,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  '+ ADD Ticket',
                                  style: TextStyle(fontSize: 18),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff177FB0),
                                    padding: EdgeInsets.symmetric(
                                      vertical: 15,
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50))),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        DataTable(
                            dataRowHeight: 80,
                            columnSpacing: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffEDEDEE),
                                borderRadius: BorderRadius.circular(10)),
                            columns: const [
                              DataColumn(
                                label: Text('Tickets'),
                              ),
                              DataColumn(
                                label: Text('#23'),
                              ),
                              DataColumn(
                                label: Text('#24'),
                              ),
                            ],
                            rows: [
                              const DataRow(cells: [
                                DataCell(
                                  Text('Topic'),
                                ),
                                DataCell(
                                  Text('How can i invite'),
                                ),
                                DataCell(
                                  Text('Question Number 2'),
                                ),
                              ]),
                              DataRow(cells: [
                                const DataCell(
                                  Text('Request Status'),
                                ),
                                DataCell(
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 7),
                                    decoration: BoxDecoration(
                                        color: const Color(0x407E7979),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: const Text(
                                      'Pedndig',
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 7),
                                    decoration: BoxDecoration(
                                        color: const Color(0xff177FB0),
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: const Text(
                                      'Pedndig',
                                    ),
                                  ),
                                ),
                              ]),
                              const DataRow(cells: [
                                DataCell(
                                  Text('Last Update'),
                                ),
                                DataCell(
                                  Text('2-23-2022'),
                                ),
                                DataCell(
                                  Text('2-23-2022'),
                                ),
                              ]),
                              DataRow(cells: [
                                DataCell(Text('')),
                                DataCell(ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff177FB0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40))),
                                  onPressed: () {},
                                  child: Text('View'),
                                )),
                                DataCell(ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff177FB0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40))),
                                  onPressed: () {},
                                  child: Text('View'),
                                ))
                              ])
                            ]),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Icon(Icons.arrow_circle_left_rounded)),
                            Text('1 of 12'),
                            TextButton(
                                onPressed: () {},
                                child: Icon(Icons.arrow_circle_right_rounded))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget _verticalDivider = const VerticalDivider(
  //   color: Colors.black,
  //   thickness: 1,
  // );
}
