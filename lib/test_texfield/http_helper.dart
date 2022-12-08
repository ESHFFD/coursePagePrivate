import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:tetest/test_texfield/new_user_provide.dart';
import 'package:tetest/test_texfield/provider.dart';

class HttpHelper extends ChangeNotifier {
  final List<User> userInfo = [];
  final List<NewUser> setUser = [];
  Future getToken() async {
    final url = Uri.parse('http://135.125.59.77:8090/api/v1/auth/');
    final response = await http.post(
      url,
      body: jsonEncode({"password": "111", "user_name": "nimaerfan"}),
      headers: <String, String>{
        "Content-Type": "application/json",
        "accept": "application/json"
      },
    );
    var json = jsonDecode(response.body);
    // final userName = json['user_name'];
    // final getToken = json['auth']['access_token'];
    // final token = json[]
    final user = User(
      id: json['role']['role_id'],
      userName: json['user_name'],
      tok: json['auth']['access_token'],
    );
    userInfo.add(user);
    print(userInfo);
    notifyListeners();
  }

  Future serNewUser(NewUser user) async {
    final url = Uri.parse('http://135.125.59.77:8090/api/v1/sign-up/teacher/');
    final response = await http.post(url,
        body: jsonEncode({
          'user_name': user.userN,
          'password': user.pass,
        }),
        headers: <String, String>{
          "Content-Type": "application/json",
          "accept": "application/json"
        });

    var json = jsonDecode(response.body);
    final newUser = {
      "id": json['data']["id"],
      'userName': json['data']['user_name']
    };
    print(json['data']['id']);
    print(response.body);
  }
}
