import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:tetest/calendar/calendar.dart';
import 'package:tetest/calendar/models/task_list.dart';
import 'package:tetest/models/questions.dart';
import 'package:tetest/screens/home_page.dart';
import 'package:tetest/teacherAuth/home_page.dart';
import 'package:tetest/teacherPanel/screens/dashboard.dart';
import 'package:tetest/test_texfield/http_helper.dart';
import 'package:tetest/test_texfield/txt.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (contex) => Questions(),
        ),
        ChangeNotifierProvider(
          create: (contex) => Tasks(),
        ),
        ChangeNotifierProvider(
          create: (contex) => HttpHelper(),
        )
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: TeacherHomePage(),

        // routes: {QuizDetailScreen.routName: (ctx) => const QuestionGrid()},
      ),
    );
  }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Theme Switcher'),
//         actions: const [ThemeToggel()],
//       ),
//       body: Container(),
//     );
//   }
// }
}
