import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tetest/models/questions.dart';
import 'package:tetest/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (contex) => Questions())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomaPgae(),

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
