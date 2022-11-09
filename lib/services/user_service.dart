import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/user_model.dart';


class UserAgentClient {

  String ipAddressPhone = "10.0.2.2";
  String ipAddressWeb = "127.0.0.1";
  String path = "api/v1/users";

  Future<User> getUserById(int userId) async {
    String baseUrl = "$ipAddressPhone:7244";
    var source = Uri.https(baseUrl, "$path/$userId");
    debugPrint(source.toString());
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