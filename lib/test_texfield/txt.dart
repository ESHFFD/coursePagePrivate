import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:tetest/test_texfield/http_helper.dart';
import 'package:tetest/test_texfield/new_user_provide.dart';

class Txt extends StatefulWidget {
  Txt({Key? key}) : super(key: key);

  @override
  State<Txt> createState() => _TxtState();
}

class _TxtState extends State<Txt> {
  void saveForm() async {
    await Provider.of<HttpHelper>(context, listen: false).serNewUser(NewUser(
      userN: _userName.text.trim(),
      pass: _pass.text.trim(),
    ));
  }

  TextEditingController _userName = TextEditingController();
  TextEditingController _pass = TextEditingController();
  String name = '';
  String token = '';
  var title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<HttpHelper>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: ListView.builder(
                  itemCount: data.userInfo.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      child: Column(
                        children: [
                          Text(data.userInfo[i].userName),
                          Text(data.userInfo[i].tok)
                        ],
                      ),
                    );
                  }),
            ),
            TextFormField(
              controller: _userName,
              decoration: InputDecoration(
                label: const Text('UserName'),
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              controller: _pass,
              decoration: InputDecoration(
                label: const Text('Password'),
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: saveForm,
              child: const Text(" NewUser"),
            ),

            // ElevatedButton(
            //   onPressed: setUser,
            //   child: const Text("new user"),
            // ),
            ElevatedButton(
              onPressed: data.getToken,
              child: const Text("get token"),
            ),
            // ElevatedButton(
            //   onPressed: getUser,
            //   child: const Text("get User"),
            // ),
          ],
        ));
  }

  // Future setUser() async {
  //   final url = Uri.parse('http://135.125.59.77:8090/api/v1/sign-up/teacher/');
  //   final response = await http.post(url,
  //       headers: <String, String>{
  //         "Content-Type": "application/json",
  //         "accept": "application/json"
  //       },
  //       body: jsonEncode({"password": "123", "user_name": "eham"}));
  //   print(response.body);
  // }
}
