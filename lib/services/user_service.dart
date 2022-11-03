import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/user_model.dart';


class UserAgentClient {

  String baseUrl = '10.0.2.2:7244';
  String path = "api/v1/users";

  Future<User> getUserById(int userId) async {
    var source = Uri.https(baseUrl, "$path/$userId");

    final response = await http.get(source);
    final jsonData = jsonDecode(response.body);
    final User userFound =  User(
        jsonData['userId'],
        jsonData['username'],
        jsonData['firstname'],
        jsonData['lastname']
    );

    return userFound;
  }

}