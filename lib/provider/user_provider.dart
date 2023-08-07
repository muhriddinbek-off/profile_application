import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserModal with ChangeNotifier {
  String firstName;
  String lastName;
  String userName;
  String email;
  String password;
  String img;
  String phone;

  UserModal({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.password,
    required this.img,
    required this.phone,
  });

  void userInfo() {
    Uri url = Uri.parse('https://randomuser.me/api');

    http.get(url).then((response) {
      if (response.statusCode == 200) {
        Map data = json.decode(response.body);
        String firstName = data['results'][0]['name']['first'];
        String lastName = data['results'][0]['name']['last'];
        String userName = data['results'][0]['login']['username'];
        String email = data['results'][0]['email'];
        String password = data['results'][0]['login']['password'];
        String img = data['results'][0]['picture']['medium'];
        String phone = data['results'][0]['phone'];
        this.email = email;
        this.firstName = firstName;
        this.img = img;
        this.lastName = lastName;
        this.password = password;
        this.phone = phone;
        this.userName = userName;
        print(firstName);
        notifyListeners();
      }
    });
  }
}
