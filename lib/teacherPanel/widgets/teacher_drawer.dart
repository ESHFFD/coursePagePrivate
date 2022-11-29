import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tetest/presentation/color_management.dart';
// import 'package:tetest/presentation/font_management.dart';
import 'package:tetest/presentation/styles_manager.dart';
import 'package:tetest/presentation/values_manager.dart';
import 'package:tetest/teacherPanel/models/events.dart';

class TeacherDrawer extends StatefulWidget {
  const TeacherDrawer({Key? key}) : super(key: key);

  @override
  State<TeacherDrawer> createState() => _TeacherDrawerState();
}

class _TeacherDrawerState extends State<TeacherDrawer> {
  TextEditingController _eventTitleController = TextEditingController();
  TextEditingController startTimeinput = TextEditingController();
  TextEditingController endTimeinput = TextEditingController();

  void _selectStartTime() async {
    TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (pickedTime != null) {
      //output 10:51 PM
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      //converting to DateTime so that we can further format on different pattern.
      //output 1970-01-01 22:53:00.000
      String formattedTime = DateFormat('HH:mm').format(parsedTime);
      //output 14:59:00
      //DateFormat() is from intl package, you can format the time on any pattern you need.

      setState(() {
        startTimeinput.text = formattedTime; //set the value of text field.
      });
    } else {
      debugPrint("Time is not selected");
    }
  }

  void _selectEndTime() async {
    TimeOfDay? pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (pickedTime != null) {
      //output 10:51 PM
      DateTime parsedTime =
          DateFormat.jm().parse(pickedTime.format(context).toString());
      //converting to DateTime so that we can further format on different pattern.
      //output 1970-01-01 22:53:00.000
      String formattedTime = DateFormat('HH:mm').format(parsedTime);
      //output 14:59:00
      //DateFormat() is from intl package, you can format the time on any pattern you need.

      setState(() {
        endTimeinput.text = formattedTime; //set the value of text field.
      });
    } else {
      debugPrint("Time is not selected");
    }
  }

  showAddDialog() async {
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.white,
              title: const Text('Add Event'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text('Status'), border: OutlineInputBorder()),
                    controller: _eventTitleController,
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text('Title'), border: OutlineInputBorder()),
                    controller: _eventTitleController,
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          readOnly: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('Start Time')),
                          controller: startTimeinput,
                          onTap: () {
                            _selectStartTime();
                          },
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.s12,
                      ),
                      Expanded(
                        child: TextFormField(
                          readOnly: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text('End Time')),
                          controller: endTimeinput,
                          onTap: () {
                            _selectEndTime();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Add"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: AppSize.s20, vertical: 0),
        child: ListView(children: [
          const Padding(padding: EdgeInsets.zero),
          Column(
            children: [
              ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(AppSize.s20),
                    border: Border.all(
                        width: 1, color: ColorTeacherPanel.boxNotifColor),
                  ),
                  child: Stack(alignment: Alignment.center, children: [
                    const Icon(
                      Icons.notifications_none,
                      size: 30,
                    ),
                    Positioned(
                        top: 1,
                        right: 1.5,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              color: ColorTeacherPanel.boxColorGreen,
                              borderRadius: BorderRadius.circular(AppSize.s8)),
                        ))
                  ]),
                ),
                trailing: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(AppSize.s20),
                    border: Border.all(
                        width: 1, color: ColorTeacherPanel.boxNotifColor),
                  ),
                  child: Stack(alignment: Alignment.center, children: const [
                    Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Michal Masiak',
                      style: getBoldStyle(
                          color: ColorTeacherPanel.darkGrey,
                          fontSize: AppSize.s20),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      "AnywhereWork",
                      style: getRegularStyle(
                          color: ColorTeacherPanel.darkGrey,
                          fontSize: AppSize.s18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Card(
                elevation: AppSize.s4,
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.s4),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today",
                            style: getBoldStyle(
                                color: ColorManagement.darkGrey,
                                fontSize: AppSize.s16),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          CalPart()
                        ]),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: showAddDialog, child: Text("Add Event")),
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.only(left: AppSize.s8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upcoming',
                        style: getBoldStyle(
                            color: ColorTeacherPanel.darkGrey,
                            fontSize: AppSize.s14),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text(
                        'Total 14 to view',
                        style: getRegularStyle(
                            color: ColorTeacherPanel.darkGrey,
                            fontSize: AppSize.s14),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      // SizedBox(
                      //     height: 400,
                      //     child: ListView(shrinkWrap: true, children: [
                      //       UpcomingCard(size: size),
                      //       UpcomingCard(size: size),
                      //       UpcomingCard(size: size),
                      //     ]))
                      SizedBox(
                        height: 400,
                        child: ListView(children: const [
                          CardNotifTeacher(
                            status: 'Working',
                            title: 'Mobile Design Technology',
                            startHour: 8,
                            endHour: 10,
                          ),
                          CardNotifTeacher(
                            status: 'Finished',
                            title: 'Web Design ',
                            startHour: 9,
                            endHour: 11,
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}

class CardNotifTeacher extends StatelessWidget {
  const CardNotifTeacher({
    required this.status,
    required this.title,
    required this.endHour,
    required this.startHour,
    super.key,
  });
  final String status;
  final String title;
  final int startHour;
  final int endHour;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSize.s8),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
            color: ColorTeacherPanel.cardColorMain,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(AppSize.s12)),
        child: Row(children: [
          Container(
              width: 10,
              decoration: BoxDecoration(
                  color: ColorTeacherPanel.cardColorLeftBorde,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(AppSize.s12),
                      topLeft: Radius.circular(AppSize.s12)))),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  status,
                  style: getRegularStyle(
                      fontSize: AppSize.s16,
                      color: ColorTeacherPanel.cardColorLeftBorde),
                ),
                Text(
                  title,
                  style: getBoldStyle(
                      color: ColorTeacherPanel.text_2, fontSize: AppSize.s16),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/acctime.svg',
                      color: ColorTeacherPanel.boxNotifColor,
                      width: 15,
                      height: 15,
                    ),
                    const SizedBox(
                      width: AppSize.s12,
                    ),
                    Text(
                      '${startHour}AM-${endHour}AM',
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class CalPart extends StatefulWidget {
  const CalPart({
    super.key,
  });
  // TextEditingController _editingController = TextEditingController();
  @override
  State<CalPart> createState() => _CalPartState();
}

class _CalPartState extends State<CalPart> {
  Map<DateTime, List<Event>>? _events;
  List<dynamic>? _selectedEvents;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  void initState() {
    _events = {};
    _selectedEvents = [];
    super.initState();
  }

  // List<Event> _getEventsFromDay(DateTime date) {
  //   return selectEvents![date] ?? [];
  // }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      onDaySelected: (selectedDay, focusedDay) {
        if (!isSameDay(_selectedDay, selectedDay)) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        }
        print(_focusedDay.toUtc());
      },
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      // eventLoader: _getEventsFromDay,
      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekHeight: 40,
      // calendarBuilders: CalendarBuilders(
      //   selectedBuilder: (context, date, focusedDay) => Container(
      //     margin: EdgeInsets.all(AppSize.s18),
      //     child: Text(
      //       date.day.toString(),
      //       style: TextStyle(color: Colors.black),
      //     ),
      //   ),
      // ),
      rowHeight: 60,
      calendarStyle: CalendarStyle(
          selectedDecoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(AppSize.s12)),
          selectedTextStyle: TextStyle(color: Colors.black),
          weekendDecoration: BoxDecoration(
              color: ColorTeacherPanel.boxColorDeactive,
              borderRadius: BorderRadius.circular(AppSize.s12)),
          defaultDecoration: BoxDecoration(
              color: ColorTeacherPanel.boxColorDeactive,
              borderRadius: BorderRadius.circular(AppSize.s12)),
          cellMargin: const EdgeInsets.all(AppSize.s4),
          canMarkersOverflow: true,
          todayDecoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: ColorTeacherPanel.boxCalColor,
              borderRadius: BorderRadius.circular(AppSize.s8)),
          todayTextStyle: const TextStyle(
            fontSize: AppSize.s14,
          )),
      headerStyle: const HeaderStyle(
          titleCentered: true,
          leftChevronPadding: EdgeInsets.zero,
          leftChevronMargin: EdgeInsets.zero,
          rightChevronPadding: EdgeInsets.zero,
          rightChevronMargin: EdgeInsets.zero,
          headerMargin: EdgeInsets.symmetric(vertical: 10),
          formatButtonVisible: false,
          titleTextStyle: TextStyle(fontSize: 16)),
      calendarFormat: CalendarFormat.week,
      focusedDay: _focusedDay,
      firstDay: DateTime.utc(2020, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
    );
  }
}

// class UpcomingCard extends StatelessWidget {
//   const UpcomingCard({
//     super.key,
//     required this.size,
//   });

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: AppSize.s12),
//       height: 70,
//       width: 230,
//       decoration: BoxDecoration(
//           color: const Color(0x73D3E8C9),
//           borderRadius: BorderRadius.circular(AppSize.s12)),
//       child: Padding(
//         padding: const EdgeInsets.all(AppSize.s8),
//         child: Row(
//           children: [
//             Container(
//               width: 55,
//               height: 55,
//               decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.rectangle,
//                   borderRadius: BorderRadius.circular(AppSize.s12)),
//               child: CircleAvatar(
//                 backgroundColor: Colors.transparent,
//                 child: SizedBox(
//                     width: 40,
//                     child: ClipOval(
//                         child: Image.asset(
//                       'assets/svg/avatar/av1.jpg',
//                     ))),
//               ),
//             ),
//             SizedBox(
//               width: size.width * 0.04,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Michal payne\nAW Design System ',
//                   style: getBoldStyle(
//                       color: ColorTeacherPanel.darkGrey,
//                       fontSize: FontSize.s12),
//                 ),
//                 // Text(
//                 //   'data',
//                 //   style: getBoldStyle(
//                 //       color: ColorTeacherPanel.darkGrey,
//                 //       fontSize: FontSize.s12),
//                 // ),
//                 Row(
//                   children: [
//                     Icon(
//                       Icons.calendar_month,
//                       size: 16,
//                       color: ColorTeacherPanel.boxNotifColor,
//                     ),
//                     SizedBox(
//                       width: size.width * 0.01,
//                     ),
//                     Text(
//                       '8/10',
//                       style: TextStyle(color: ColorTeacherPanel.boxNotifColor),
//                     )
//                   ],
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
