import 'package:flutter/material.dart';

class Txt extends StatefulWidget {
  Txt({Key? key}) : super(key: key);

  @override
  State<Txt> createState() => _TxtState();
}

class _TxtState extends State<Txt> {
  var title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Container());
  }
}
