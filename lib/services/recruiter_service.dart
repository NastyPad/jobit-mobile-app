import 'dart:convert';



import 'package:http/http.dart' as http;

import '../models/recruiter_model.dart';
class RecruiterService {
  static Future<List<Recruiter>> getAllRecruiters() async {
    final response =
    await http.get(Uri.parse(
        "https://jobit-api-nastypad.azurewebsites.net/api/v1/recruiter"));

    if (response.statusCode == 200) {
      final responseJSON = json.decode(response.body);
      final allApplicant = listRecruiter.listaRecruiter(responseJSON);
      return allApplicant;
    }else{
      return <Recruiter>[];
    }
    //
  }

}