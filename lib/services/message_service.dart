import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/message_model.dart';

class MessageService {
  static Future<List<Message>> getAllMessages(int recruiterId, int applicantId) async {
    final response =
    await http.get(Uri.parse(
        "https://jobit-api-nastypad.azurewebsites.net/api/v1/message/"+recruiterId.toString()+"/"+applicantId.toString()));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allMessage = listMessage.listaMessage(responseJSON);
      return allMessage;
    }else{
      return <Message>[];
    }
    //
  }

  Future<bool> postMessage(Map data) async {
    bool status = false;

    //Add the item to the database, call the API
    http.Response response = await http
        .post(
        Uri.parse(
            "https://jobit-api-nastypad.azurewebsites.net/api/v1/message"),
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

}