import 'dart:convert';

import 'package:http/http.dart' as http;

class ChatService {

  Future<bool> postChat(Map data) async {
    bool status = false;

    //Add the item to the database, call the API
    http.Response response = await http
        .post(
        Uri.parse(
            "https://localhost:7244/api/v1/chat"),
        body: jsonEncode(data),
        headers: {
          'Content-type': 'application/json'
        }
    );

    if (response.statusCode == 201) {
      status = response.body.isNotEmpty;
    }

    return status;
  }

  static Future<bool> getAllChatBYID(recluter, applicant) async {
    final response =
    await http.get(Uri.parse(
        "https://localhost:7244/api/v1/chat/"+recluter.toString()+"/"+applicant.toString()));

    if (response.statusCode == 200) {
      return true;
    }else{
      return false;
    }
    //
  }
}