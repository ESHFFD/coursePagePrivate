import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tetest/widgets/file_page.dart';

class TeacherHomePage extends StatefulWidget {
  const TeacherHomePage({Key? key}) : super(key: key);

  @override
  State<TeacherHomePage> createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> {
  String? fileNameResume;
  String? fileNameVideo;
  String firstDropDownItem = 'English';
  final List languageItems = [
    'English',
    'French',
    'Germany',
    'Turkey',
    'Persian',
  ];
  bool _isSelected = false;
  int lanIndex = 0;
  Future<File> saveFile(PlatformFile file) async {
    final appStorage = await getApplicationSupportDirectory();
    final newFile = File('${appStorage.path}/${file.name}');

    return File(file.path!).copy(newFile.path);
  }

//go to added file screen .....

  // void openFile(List<PlatformFile> files) =>
  //     Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => FilePage(
  //               files: files,
  //             )));
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('teacher auth'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Information'),
            Form(
                child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.height * 0.02, vertical: size.height * 0.02),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.content_copy),
                      label: const Text('Write your work history'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextButton(
                        onPressed: () async {
                          setState(() {
                            _isSelected = true;
                          });
                          final result = await FilePicker.platform.pickFiles(
                            allowMultiple: true,
                          );
                          if (result == null) return;

                          final file = result.files.first;
                          setState(() {
                            fileNameResume = file.name;
                          });
                          // final newFile = await saveFile(file);
                          // openFile(result.files);
                        },
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: const BorderSide(
                                    width: 2, color: Color(0xffD9D9D9)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(
                              Icons.attach_file,
                              color: Color(0xff7E7979),
                            ),
                            Text(
                              "Resume",
                              style: TextStyle(color: Color(0xff7E7979)),
                            )
                          ],
                        ),
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextButton(
                        onPressed: () {
                          setState(() {
                            _isSelected = true;
                          });
                          showCupertinoModalPopup(
                              context: context,
                              builder: (context) => Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 250,
                                        child: CupertinoPicker(
                                            backgroundColor: Colors.white,
                                            itemExtent: 64,
                                            onSelectedItemChanged: (index) {
                                              setState(() {
                                                lanIndex = index;
                                              });
                                            },
                                            children: languageItems
                                                .map((item) =>
                                                    Center(child: Text(item)))
                                                .toList()),
                                      ),
                                    ],
                                  ));
                        },
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: const BorderSide(
                                    width: 2, color: Color(0xffD9D9D9)))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/authsvg/languages.svg',
                              width: 30,
                              height: 20,
                            ),
                            (_isSelected == false)
                                ? const Text(
                                    'Languages',
                                    style: TextStyle(color: Color(0xff7E7979)),
                                  )
                                : Text(
                                    languageItems[lanIndex],
                                    style: const TextStyle(
                                        color: Color(0xff7E7979)),
                                  ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xff7E7979),
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                  if (_isSelected)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: (fileNameResume != null)
                              ? Text(fileNameResume!)
                              : null),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      side: const BorderSide(
                                          width: 2, color: Color(0xffD9D9D9)))),
                              onPressed: () async {
                                setState(() {
                                  _isSelected = true;
                                });
                                final result =
                                    await FilePicker.platform.pickFiles(
                                  allowMultiple: true,
                                  type: FileType.video,
                                );
                                if (result == null) return;

                                final file = result.files.first;
                                setState(() {
                                  fileNameVideo = file.name;
                                });
                                // final newFile = await saveFile(file);
                                // openFile(result.files);
                              },
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.ondemand_video,
                                    color: Color(0xff7E7979),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Upload your biography video',
                                    style: TextStyle(color: Color(0xff7E7979)),
                                  )
                                ],
                              )))
                    ],
                  ),
                  if (_isSelected)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: (fileNameVideo != null)
                              ? Text(fileNameVideo!)
                              : null),
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {},
                        child: const Text('data'),
                      )),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ))
          ]),
    );
  }
}

//  DropdownButton(
//                       dropdownColor: const Color(0Xff187EB3),
//                       isDense: true,
//                       style: const TextStyle(color: Colors.black),
//                       icon: const Icon(
//                         Icons.keyboard_arrow_down,
//                       ),
//                       value: firstDropDownItem,
//                       items: languageItems
//                           .map<DropdownMenuItem<String>>((String value) {
//                         return DropdownMenuItem<String>(
//                           value: value,
//                           child: Text(value),
//                         );
//                       }).toList(),
//                       onChanged: (String? newVal) {
//                         setState(() {
//                           firstDropDownItem = newVal!;
//                         });
//                       },
//                     ),

// showModalBottomSheet(
//                           context: context,
//                           builder: (context) {
//                             return Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 ListTile(
//                                   title: const Text('Photo'),
//                                   onTap: () {
//                                     setState(() {
//                                       firstDropDownItem = languageItems[2];
//                                     });
//                                     Navigator.pop(context);
//                                   },
//                                 ),
//                                 ListTile(
//                                   title: const Text('Music'),
//                                   onTap: () {
//                                     Navigator.pop(context);
//                                   },
//                                 ),
//                                 ListTile(
//                                   title: const Text('Video'),
//                                   onTap: () {
//                                     Navigator.pop(context);
//                                   },
//                                 ),
//                                 ListTile(
//                                   title: const Text('Share'),
//                                   onTap: () {
//                                     Navigator.pop(context);
//                                   },
//                                 ),
//                               ],
//                             );
//                           })
